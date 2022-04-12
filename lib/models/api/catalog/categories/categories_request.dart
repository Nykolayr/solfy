import 'package:json_annotation/json_annotation.dart';

part 'categories_request.g.dart';

@JsonSerializable()
class CategoriesRequest {
  @JsonKey(name: 'geo[place_id]', includeIfNull: false)
  String? placeId;

  @JsonKey(name: 'geo[longitude]', includeIfNull: false)
  String? longitude;

  @JsonKey(name: 'geo[latitude]', includeIfNull: false)
  String? latitude;
  CategoriesRequest({this.placeId, this.latitude, this.longitude});

  Map<String, dynamic> toJson() => _$CategoriesRequestToJson(this);
}
