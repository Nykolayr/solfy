import 'package:json_annotation/json_annotation.dart';

part 'search_request.g.dart';

@JsonSerializable()
class SearchRequest {
  @JsonKey(name: 'geo[place_id]', includeIfNull: false)
  String? placeId;

  @JsonKey(name: 'geo[longitude]', includeIfNull: false)
  String? longitude;

  @JsonKey(name: 'geo[latitude]', includeIfNull: false)
  String? latitude;

  @JsonKey(name: "query")
  String query;
  SearchRequest({required this.query, this.placeId, this.latitude, this.longitude});

  Map<String, dynamic> toJson() => _$SearchRequestToJson(this);
}
