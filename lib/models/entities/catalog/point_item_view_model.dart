import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';

class PointItemViewModel with ClusterItem {
  int? shopId;
  GeoPointItem? geo;
  PointItemViewModel({
    this.shopId,
    this.geo,
  });

  @override
  LatLng get location => LatLng(this.geo?.latitude ?? 0, this.geo?.longitude ?? 0);
}

class GeoPointItem {
  double? longitude;
  double? latitude;
  GeoPointItem({
    this.longitude,
    this.latitude,
  });
}
