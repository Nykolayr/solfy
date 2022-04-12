import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerModel {
  MarkerModel({
    required this.id,
    required this.lat,
    required this.lon,
    required this.icon,
    required this.hint,
    required this.regionId,
    required this.value,
    this.distance,
  });

  double lat;

  double lon;

  int id;

  int regionId;

  String value;

  String hint;

  double? distance;

  BitmapDescriptor icon;
}
