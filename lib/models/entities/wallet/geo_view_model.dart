import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GeoViewModel with _$GeoViewModel {
  const factory GeoViewModel(
    int? placeId,
    double? longitude,
    double? latitude,
  ) = Geo;
}
