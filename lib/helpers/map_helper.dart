import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solfy_flutter/models/entities/catalog/point_item_view_model.dart';

/// Вспомогательный класс для работы с картой
class MapHelper {
  /// Считает рамку, в которую можно вписать переданные точки [points]
  static LatLngBounds toBoundsFromLatLng(List<PointItemViewModel> points) {
    if (points.isEmpty) throw Exception("Points cannot be empty");

    double x0, x1, y0, y1;
    x0 = x1 = points.first.geo!.latitude!;
    y0 = y1 = points.first.geo!.longitude!;
    points.forEach((point) {
      if (point.geo!.latitude! > x1) x1 = point.geo!.latitude!;
      if (point.geo!.latitude! < x0) x0 = point.geo!.latitude!;
      if (point.geo!.longitude! > y1) y1 = point.geo!.longitude!;
      if (point.geo!.longitude! < y0) y0 = point.geo!.longitude!;
    });

    LatLng northEast = LatLng(x1, y1);
    LatLng southWest = LatLng(x0, y0);

    LatLngBounds gmuLatLngBounds = LatLngBounds(northeast: northEast, southwest: southWest);

    return gmuLatLngBounds;
  }
}
