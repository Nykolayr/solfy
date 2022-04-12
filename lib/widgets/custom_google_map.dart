import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'package:solfy_flutter/helpers/map_helper.dart';
import 'package:solfy_flutter/helpers/map_style.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/entities/catalog/point_item_view_model.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/services/database/global_settings_db_service.dart';
import 'package:solfy_flutter/widgets/geo_button.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';

/// Стилизованная карта с кластеризацией
class CustomGoogleMap extends StatefulWidget {
  CustomGoogleMap({
    Key? key,
    final List<PointItemViewModel>? clusterMarkers,
    required this.markers,
    this.onTap,
    this.onMapFinishLoading,
    this.onMapTap,
    this.initialZoom = 15,
    this.initialLatLng,
    this.liteMode,
    this.showLocationButton = true,
    this.optimizeMode = false,
  }) {
    if (clusterMarkers != null) {
      clusterMarkers.forEach((element) {
        if (element.geo?.latitude != null && element.geo?.longitude != null) {
          final isDuplicate = this.clusterMarkers!.any((el) =>
              (el.geo!.latitude! == element.geo!.latitude! &&
                  el.geo!.longitude! == element.geo!.longitude!));
          if (!isDuplicate) {
            this.clusterMarkers?.add(element);
          }
        }
      });
    }
  }

  final Set<Marker> markers;
  final List<PointItemViewModel>? clusterMarkers = [];
  final void Function(PointItemViewModel item)? onTap;
  final void Function()? onMapFinishLoading;
  final void Function(LatLng latLng)? onMapTap;
  final double initialZoom;
  final LatLng? initialLatLng;
  final bool? liteMode;
  final bool showLocationButton;
  final bool optimizeMode;
  @override
  _CustomGoogleMapState createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  bool _isMapVisible = false;
  late ClusterManager _manager;
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = Set();
  Future _mapFuture = Future.delayed(Duration(milliseconds: 200), () => true);

  @override
  void initState() {
    _manager = _initClusterManager();
    super.initState();
  }

  ClusterManager _initClusterManager() {
    return ClusterManager<PointItemViewModel>(
      widget.clusterMarkers ?? [],
      _updateMarkers,
      markerBuilder: _markerBuilder,
      levels: const [1, 4.25, 6.75, 8.25, 11.5, 14.5, 16.0, 16.5, 20.0],
      stopClusteringZoom: 13,
    );
  }

  void _updateMarkers(Set<Marker> markers) {
    setState(() {
      this.markers = markers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _mapFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AnimatedOpacity(
              curve: Curves.fastOutSlowIn,
              opacity: _isMapVisible ? 1.0 : 0,
              duration: Duration(milliseconds: 200),
              child: Stack(
                children: [
                  GoogleMap(
                    onTap: widget.onMapTap,
                    rotateGesturesEnabled: widget.optimizeMode ? false : true,
                    scrollGesturesEnabled: widget.optimizeMode ? false : true,
                    zoomGesturesEnabled: widget.optimizeMode ? false : true,
                    zoomControlsEnabled: false,
                    myLocationEnabled: widget.optimizeMode ? false : true,
                    compassEnabled: false,
                    trafficEnabled: false,
                    liteModeEnabled: widget.liteMode != null ? widget.liteMode! : false,
                    mapToolbarEnabled: false,
                    myLocationButtonEnabled: false,
                    onCameraMove: _manager.onCameraMove,
                    onCameraIdle: _manager.updateMap,
                    onMapCreated: (controller) {
                      _controller.complete(controller);
                      controller.setMapStyle(StaticMapStyle.mapStyleCONST);
                      Future.delayed(
                          const Duration(milliseconds: 200),
                          () => setState(() {
                                widget.onMapFinishLoading?.call();
                                _isMapVisible = true;
                                _manager.setMapId(controller.mapId);
                              }));
                    },
                    markers: widget.clusterMarkers!.length != 0 ? markers : widget.markers,
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      target: widget.initialLatLng != null
                          ? widget.initialLatLng!
                          : LatLng(41.229357, 69.217236),
                      zoom: widget.initialZoom,
                    ),
                  ),
                  widget.showLocationButton
                      ? GeoButton(
                          onTap: () async {
                            final permission = await Geolocator.checkPermission();
                            final isGeoRequested = await GlobalSettingsDbService.isGeoRequested();
                            if (permission != LocationPermission.whileInUse &&
                                permission != LocationPermission.always) {
                              if (isGeoRequested) {
                                ModalHelpers.showGeoRequestModalSettings(context);
                                return;
                              } else {
                                ModalHelpers.showGeoRequestModalFeed(context);
                                return;
                              }
                            }
                            final controller = await _controller.future;
                            // final currentPosition = await Geolocator.getCurrentPosition(
                            //     desiredAccuracy: LocationAccuracy.reduced);
                            final Position currentPosition =
                                await Geolocator.getPositionStream().first;
                            controller.animateCamera(CameraUpdate.newLatLngZoom(
                                LatLng(currentPosition.latitude, currentPosition.longitude), 14));
                          },
                        )
                      : SizedBox()
                ],
              ),
            );
          } else {
            return SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoadingRingAnimation(),
                ],
              ),
            );
          }
        });
  }

  Future<Marker> Function(Cluster<PointItemViewModel>) get _markerBuilder => (cluster) async {
        final staticStore = context.read<StaticRepository>();
        return Marker(
          markerId: MarkerId(cluster.getId()),
          position: cluster.location,
          onTap: () async {
            if (!cluster.isMultiple) {
              widget.onTap?.call(cluster.items.first);
            } else {
              final controller = await _controller.future;
              final currentZoom = await controller.getZoomLevel();
              final bounds = MapHelper.toBoundsFromLatLng(cluster.items.toList());
              if (currentZoom > 13) {
                controller.animateCamera(CameraUpdate.newLatLngBounds(
                    LatLngBounds(
                      southwest: bounds.southwest,
                      northeast: bounds.northeast,
                    ),
                    20));
              } else {
                await controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
                  target: LatLng(cluster.location.latitude, cluster.location.longitude),
                  zoom: currentZoom + 0.75,
                )));
              }
            }
          },
          icon: cluster.isMultiple
              ? await _getMarkerBitmap(100, text: cluster.count.toString())
              : staticStore.icon!,
        );
      };

  Future<BitmapDescriptor> _getMarkerBitmap(int size, {String? text}) async {
    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint2 = Paint()..color = Colors.white;

    final rect = new Rect.fromLTWH(0.0, 0.0, size.toDouble() / 2, size.toDouble() / 2);
    final gradient = new LinearGradient(
      tileMode: TileMode.clamp,
      colors: [Color(int.parse("0xff00D3AF")), Color(int.parse("0xff5949AA"))],
    );

    final paint = new Paint()
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.butt // StrokeCap.round is not recommended.
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;
    final center = new Offset(size / 2, size / 2);
    final radius = size / 2;
    final startAngle = 0.0;
    final sweepAngle = 2 * pi;
    canvas.drawArc(new Rect.fromCircle(center: center, radius: radius - 8), startAngle, sweepAngle,
        false, paint);

    canvas.drawCircle(Offset(size / 2, size / 2), size / 2 - 12, paint2);

    if (text != null) {
      TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
      final textStyle = TextStyle(
        color: Color(int.parse("0xff818692")),
        fontSize: 40,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );
      painter.text = TextSpan(
        text: text,
        style: textStyle,
      );
      painter.layout();
      painter.paint(
        canvas,
        Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
      );
    }

    final img = await pictureRecorder.endRecording().toImage(size, size);
    final data = await img.toByteData(format: ImageByteFormat.png) as ByteData;

    return BitmapDescriptor.fromBytes(data.buffer.asUint8List());
  }
}
