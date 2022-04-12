import 'package:json_annotation/json_annotation.dart';

part 'filter_request.g.dart';

@JsonSerializable()
class FilterRequest {
  @JsonKey(name: 'geo[place_id]', includeIfNull: false)
  String? placeId;

  @JsonKey(name: 'geo[longitude]', includeIfNull: false)
  String? longitude;

  @JsonKey(name: 'geo[latitude]', includeIfNull: false)
  String? latitude;

  @JsonKey(name: 'category_id', includeIfNull: false)
  int? categoryId;

  @JsonKey(name: 'brand_id', includeIfNull: false)
  int? brandId;

  @JsonKey(name: 'type', includeIfNull: false)
  String? type;

  @JsonKey(ignore: true)
  bool? typeAll;

  @JsonKey(name: 'worktime', includeIfNull: false)
  String? worktime;

  @JsonKey(name: 'sort', includeIfNull: false)
  String? sort;

  @JsonKey(name: 'term', includeIfNull: false)
  int? term;

  @JsonKey(ignore: true)
  bool sortVisible = true;

  @JsonKey(ignore: true)
  bool onlineOfflineVisible = true;

  @JsonKey(ignore: true)
  bool closeSortVisible = true;

  FilterRequest({
    this.placeId,
    this.latitude,
    this.longitude,
    this.brandId,
    this.categoryId,
    this.sort,
    this.type,
    this.term,
    this.typeAll,
    this.worktime,
    this.onlineOfflineVisible = true,
    this.closeSortVisible = true,
    this.sortVisible = true,
  });

  Map<String, dynamic> toJson() {
    final json = _$FilterRequestToJson(this);
    if (this.typeAll != null && this.typeAll!) {
      if (json.containsKey("type")) {
        json.remove("type");
      }
    }
    return json;
  }

  bool isEqual(FilterRequest request) {
    return request.sort == this.sort &&
        request.term == this.term &&
        request.type == this.type &&
        request.typeAll == this.typeAll &&
        request.worktime == this.worktime;
  }

  FilterRequest getWithoutGeo() {
    return FilterRequest(
      sort: this.sort,
      term: this.term,
      type: 'offline',
      typeAll: false,
      worktime: this.worktime,
      categoryId: this.categoryId,
      brandId: this.brandId,
      onlineOfflineVisible: false,
      sortVisible: false,
      closeSortVisible: false,
    );
  }

  void setFilter(FilterRequest request) {
    this.sort = request.sort;
    this.term = request.term;
    this.type = request.type;
    this.typeAll = request.typeAll;
    this.worktime = request.worktime;
  }

  factory FilterRequest.clone(FilterRequest filter) {
    return FilterRequest(
      sort: filter.sort,
      term: filter.term,
      type: filter.type,
      typeAll: filter.typeAll,
      worktime: filter.worktime,
    );
  }
}
