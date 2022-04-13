import 'package:geolocator/geolocator.dart';

/// Вспомогательный класс для локальной работы с distance
class DistanceHelper {
  /// Если возможно, возвращает расстояние от пользователя до точки ([latitude], [longitude])
  static Future<String?> getDistanceFromLatLong(
      double latitude, longitude) async {
    final permission = await Geolocator.checkPermission();
    if ((permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse)) {
      final currentPosition = await Geolocator.getLastKnownPosition() ??
          await Geolocator.getPositionStream(
            desiredAccuracy: LocationAccuracy.reduced,
            forceAndroidLocationManager: true,
          ).first;
      final distance = Geolocator.distanceBetween(
        currentPosition.latitude,
        currentPosition.longitude,
        latitude,
        longitude,
      );
      if (distance >= 1000) {
        return "${distance ~/ 1000} км";
      } else {
        return "$distance м";
      }
    }
  }
}
