// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_search_client_properties_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientSearchClientPropertiesItemResponse
    _$ClientSearchClientPropertiesItemResponseFromJson(
        Map<String, dynamic> json) {
  return ClientPropertiesItem.fromJson(json);
}

/// @nodoc
class _$ClientSearchClientPropertiesItemResponseTearOff {
  const _$ClientSearchClientPropertiesItemResponseTearOff();

  ClientPropertiesItem call(
      {@JsonKey(name: "market_value_realty") int? marketValueRealty,
      @JsonKey(name: "year_issue") int? yearIssue,
      @JsonKey(name: "model_vehicle") String? modelVehicle,
      @JsonKey(name: "region_property") ValueObject? regionProperty,
      @JsonKey(name: "market_value_vehicle") int? marketValueVehicle,
      @JsonKey(name: "type_property") ValueObject? typeProperty,
      @JsonKey(name: "type_vehicle") ValueObject? typeVehicle}) {
    return ClientPropertiesItem(
      marketValueRealty: marketValueRealty,
      yearIssue: yearIssue,
      modelVehicle: modelVehicle,
      regionProperty: regionProperty,
      marketValueVehicle: marketValueVehicle,
      typeProperty: typeProperty,
      typeVehicle: typeVehicle,
    );
  }

  ClientSearchClientPropertiesItemResponse fromJson(Map<String, Object> json) {
    return ClientSearchClientPropertiesItemResponse.fromJson(json);
  }
}

/// @nodoc
const $ClientSearchClientPropertiesItemResponse =
    _$ClientSearchClientPropertiesItemResponseTearOff();

/// @nodoc
mixin _$ClientSearchClientPropertiesItemResponse {
  @JsonKey(name: "market_value_realty")
  int? get marketValueRealty => throw _privateConstructorUsedError;
  @JsonKey(name: "year_issue")
  int? get yearIssue => throw _privateConstructorUsedError;
  @JsonKey(name: "model_vehicle")
  String? get modelVehicle => throw _privateConstructorUsedError;
  @JsonKey(name: "region_property")
  ValueObject? get regionProperty => throw _privateConstructorUsedError;
  @JsonKey(name: "market_value_vehicle")
  int? get marketValueVehicle => throw _privateConstructorUsedError;
  @JsonKey(name: "type_property")
  ValueObject? get typeProperty => throw _privateConstructorUsedError;
  @JsonKey(name: "type_vehicle")
  ValueObject? get typeVehicle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientSearchClientPropertiesItemResponseCopyWith<
          ClientSearchClientPropertiesItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientSearchClientPropertiesItemResponseCopyWith<$Res> {
  factory $ClientSearchClientPropertiesItemResponseCopyWith(
          ClientSearchClientPropertiesItemResponse value,
          $Res Function(ClientSearchClientPropertiesItemResponse) then) =
      _$ClientSearchClientPropertiesItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "market_value_realty") int? marketValueRealty,
      @JsonKey(name: "year_issue") int? yearIssue,
      @JsonKey(name: "model_vehicle") String? modelVehicle,
      @JsonKey(name: "region_property") ValueObject? regionProperty,
      @JsonKey(name: "market_value_vehicle") int? marketValueVehicle,
      @JsonKey(name: "type_property") ValueObject? typeProperty,
      @JsonKey(name: "type_vehicle") ValueObject? typeVehicle});
}

/// @nodoc
class _$ClientSearchClientPropertiesItemResponseCopyWithImpl<$Res>
    implements $ClientSearchClientPropertiesItemResponseCopyWith<$Res> {
  _$ClientSearchClientPropertiesItemResponseCopyWithImpl(
      this._value, this._then);

  final ClientSearchClientPropertiesItemResponse _value;
  // ignore: unused_field
  final $Res Function(ClientSearchClientPropertiesItemResponse) _then;

  @override
  $Res call({
    Object? marketValueRealty = freezed,
    Object? yearIssue = freezed,
    Object? modelVehicle = freezed,
    Object? regionProperty = freezed,
    Object? marketValueVehicle = freezed,
    Object? typeProperty = freezed,
    Object? typeVehicle = freezed,
  }) {
    return _then(_value.copyWith(
      marketValueRealty: marketValueRealty == freezed
          ? _value.marketValueRealty
          : marketValueRealty // ignore: cast_nullable_to_non_nullable
              as int?,
      yearIssue: yearIssue == freezed
          ? _value.yearIssue
          : yearIssue // ignore: cast_nullable_to_non_nullable
              as int?,
      modelVehicle: modelVehicle == freezed
          ? _value.modelVehicle
          : modelVehicle // ignore: cast_nullable_to_non_nullable
              as String?,
      regionProperty: regionProperty == freezed
          ? _value.regionProperty
          : regionProperty // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      marketValueVehicle: marketValueVehicle == freezed
          ? _value.marketValueVehicle
          : marketValueVehicle // ignore: cast_nullable_to_non_nullable
              as int?,
      typeProperty: typeProperty == freezed
          ? _value.typeProperty
          : typeProperty // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      typeVehicle: typeVehicle == freezed
          ? _value.typeVehicle
          : typeVehicle // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
    ));
  }
}

/// @nodoc
abstract class $ClientPropertiesItemCopyWith<$Res>
    implements $ClientSearchClientPropertiesItemResponseCopyWith<$Res> {
  factory $ClientPropertiesItemCopyWith(ClientPropertiesItem value,
          $Res Function(ClientPropertiesItem) then) =
      _$ClientPropertiesItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "market_value_realty") int? marketValueRealty,
      @JsonKey(name: "year_issue") int? yearIssue,
      @JsonKey(name: "model_vehicle") String? modelVehicle,
      @JsonKey(name: "region_property") ValueObject? regionProperty,
      @JsonKey(name: "market_value_vehicle") int? marketValueVehicle,
      @JsonKey(name: "type_property") ValueObject? typeProperty,
      @JsonKey(name: "type_vehicle") ValueObject? typeVehicle});
}

/// @nodoc
class _$ClientPropertiesItemCopyWithImpl<$Res>
    extends _$ClientSearchClientPropertiesItemResponseCopyWithImpl<$Res>
    implements $ClientPropertiesItemCopyWith<$Res> {
  _$ClientPropertiesItemCopyWithImpl(
      ClientPropertiesItem _value, $Res Function(ClientPropertiesItem) _then)
      : super(_value, (v) => _then(v as ClientPropertiesItem));

  @override
  ClientPropertiesItem get _value => super._value as ClientPropertiesItem;

  @override
  $Res call({
    Object? marketValueRealty = freezed,
    Object? yearIssue = freezed,
    Object? modelVehicle = freezed,
    Object? regionProperty = freezed,
    Object? marketValueVehicle = freezed,
    Object? typeProperty = freezed,
    Object? typeVehicle = freezed,
  }) {
    return _then(ClientPropertiesItem(
      marketValueRealty: marketValueRealty == freezed
          ? _value.marketValueRealty
          : marketValueRealty // ignore: cast_nullable_to_non_nullable
              as int?,
      yearIssue: yearIssue == freezed
          ? _value.yearIssue
          : yearIssue // ignore: cast_nullable_to_non_nullable
              as int?,
      modelVehicle: modelVehicle == freezed
          ? _value.modelVehicle
          : modelVehicle // ignore: cast_nullable_to_non_nullable
              as String?,
      regionProperty: regionProperty == freezed
          ? _value.regionProperty
          : regionProperty // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      marketValueVehicle: marketValueVehicle == freezed
          ? _value.marketValueVehicle
          : marketValueVehicle // ignore: cast_nullable_to_non_nullable
              as int?,
      typeProperty: typeProperty == freezed
          ? _value.typeProperty
          : typeProperty // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      typeVehicle: typeVehicle == freezed
          ? _value.typeVehicle
          : typeVehicle // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientPropertiesItem implements ClientPropertiesItem {
  const _$ClientPropertiesItem(
      {@JsonKey(name: "market_value_realty") this.marketValueRealty,
      @JsonKey(name: "year_issue") this.yearIssue,
      @JsonKey(name: "model_vehicle") this.modelVehicle,
      @JsonKey(name: "region_property") this.regionProperty,
      @JsonKey(name: "market_value_vehicle") this.marketValueVehicle,
      @JsonKey(name: "type_property") this.typeProperty,
      @JsonKey(name: "type_vehicle") this.typeVehicle});

  factory _$ClientPropertiesItem.fromJson(Map<String, dynamic> json) =>
      _$$ClientPropertiesItemFromJson(json);

  @override
  @JsonKey(name: "market_value_realty")
  final int? marketValueRealty;
  @override
  @JsonKey(name: "year_issue")
  final int? yearIssue;
  @override
  @JsonKey(name: "model_vehicle")
  final String? modelVehicle;
  @override
  @JsonKey(name: "region_property")
  final ValueObject? regionProperty;
  @override
  @JsonKey(name: "market_value_vehicle")
  final int? marketValueVehicle;
  @override
  @JsonKey(name: "type_property")
  final ValueObject? typeProperty;
  @override
  @JsonKey(name: "type_vehicle")
  final ValueObject? typeVehicle;

  @override
  String toString() {
    return 'ClientSearchClientPropertiesItemResponse(marketValueRealty: $marketValueRealty, yearIssue: $yearIssue, modelVehicle: $modelVehicle, regionProperty: $regionProperty, marketValueVehicle: $marketValueVehicle, typeProperty: $typeProperty, typeVehicle: $typeVehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientPropertiesItem &&
            (identical(other.marketValueRealty, marketValueRealty) ||
                const DeepCollectionEquality()
                    .equals(other.marketValueRealty, marketValueRealty)) &&
            (identical(other.yearIssue, yearIssue) ||
                const DeepCollectionEquality()
                    .equals(other.yearIssue, yearIssue)) &&
            (identical(other.modelVehicle, modelVehicle) ||
                const DeepCollectionEquality()
                    .equals(other.modelVehicle, modelVehicle)) &&
            (identical(other.regionProperty, regionProperty) ||
                const DeepCollectionEquality()
                    .equals(other.regionProperty, regionProperty)) &&
            (identical(other.marketValueVehicle, marketValueVehicle) ||
                const DeepCollectionEquality()
                    .equals(other.marketValueVehicle, marketValueVehicle)) &&
            (identical(other.typeProperty, typeProperty) ||
                const DeepCollectionEquality()
                    .equals(other.typeProperty, typeProperty)) &&
            (identical(other.typeVehicle, typeVehicle) ||
                const DeepCollectionEquality()
                    .equals(other.typeVehicle, typeVehicle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(marketValueRealty) ^
      const DeepCollectionEquality().hash(yearIssue) ^
      const DeepCollectionEquality().hash(modelVehicle) ^
      const DeepCollectionEquality().hash(regionProperty) ^
      const DeepCollectionEquality().hash(marketValueVehicle) ^
      const DeepCollectionEquality().hash(typeProperty) ^
      const DeepCollectionEquality().hash(typeVehicle);

  @JsonKey(ignore: true)
  @override
  $ClientPropertiesItemCopyWith<ClientPropertiesItem> get copyWith =>
      _$ClientPropertiesItemCopyWithImpl<ClientPropertiesItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientPropertiesItemToJson(this);
  }
}

abstract class ClientPropertiesItem
    implements ClientSearchClientPropertiesItemResponse {
  const factory ClientPropertiesItem(
          {@JsonKey(name: "market_value_realty") int? marketValueRealty,
          @JsonKey(name: "year_issue") int? yearIssue,
          @JsonKey(name: "model_vehicle") String? modelVehicle,
          @JsonKey(name: "region_property") ValueObject? regionProperty,
          @JsonKey(name: "market_value_vehicle") int? marketValueVehicle,
          @JsonKey(name: "type_property") ValueObject? typeProperty,
          @JsonKey(name: "type_vehicle") ValueObject? typeVehicle}) =
      _$ClientPropertiesItem;

  factory ClientPropertiesItem.fromJson(Map<String, dynamic> json) =
      _$ClientPropertiesItem.fromJson;

  @override
  @JsonKey(name: "market_value_realty")
  int? get marketValueRealty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "year_issue")
  int? get yearIssue => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "model_vehicle")
  String? get modelVehicle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "region_property")
  ValueObject? get regionProperty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "market_value_vehicle")
  int? get marketValueVehicle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "type_property")
  ValueObject? get typeProperty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "type_vehicle")
  ValueObject? get typeVehicle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ClientPropertiesItemCopyWith<ClientPropertiesItem> get copyWith =>
      throw _privateConstructorUsedError;
}
