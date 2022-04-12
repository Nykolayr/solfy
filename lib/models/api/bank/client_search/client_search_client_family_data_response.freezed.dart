// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_search_client_family_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientSearchClientFamilyDataResponse
    _$ClientSearchClientFamilyDataResponseFromJson(Map<String, dynamic> json) {
  return ClientFamilyData.fromJson(json);
}

/// @nodoc
class _$ClientSearchClientFamilyDataResponseTearOff {
  const _$ClientSearchClientFamilyDataResponseTearOff();

  ClientFamilyData call(
      @JsonKey(name: "marital_status") ValueObject? maritalStatus,
      @JsonKey(name: "children") ValueObject? children,
      @JsonKey(name: "children_number") int? childrenNumber) {
    return ClientFamilyData(
      maritalStatus,
      children,
      childrenNumber,
    );
  }

  ClientSearchClientFamilyDataResponse fromJson(Map<String, Object> json) {
    return ClientSearchClientFamilyDataResponse.fromJson(json);
  }
}

/// @nodoc
const $ClientSearchClientFamilyDataResponse =
    _$ClientSearchClientFamilyDataResponseTearOff();

/// @nodoc
mixin _$ClientSearchClientFamilyDataResponse {
  @JsonKey(name: "marital_status")
  ValueObject? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "children")
  ValueObject? get children => throw _privateConstructorUsedError;
  @JsonKey(name: "children_number")
  int? get childrenNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientSearchClientFamilyDataResponseCopyWith<
          ClientSearchClientFamilyDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientSearchClientFamilyDataResponseCopyWith<$Res> {
  factory $ClientSearchClientFamilyDataResponseCopyWith(
          ClientSearchClientFamilyDataResponse value,
          $Res Function(ClientSearchClientFamilyDataResponse) then) =
      _$ClientSearchClientFamilyDataResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "marital_status") ValueObject? maritalStatus,
      @JsonKey(name: "children") ValueObject? children,
      @JsonKey(name: "children_number") int? childrenNumber});
}

/// @nodoc
class _$ClientSearchClientFamilyDataResponseCopyWithImpl<$Res>
    implements $ClientSearchClientFamilyDataResponseCopyWith<$Res> {
  _$ClientSearchClientFamilyDataResponseCopyWithImpl(this._value, this._then);

  final ClientSearchClientFamilyDataResponse _value;
  // ignore: unused_field
  final $Res Function(ClientSearchClientFamilyDataResponse) _then;

  @override
  $Res call({
    Object? maritalStatus = freezed,
    Object? children = freezed,
    Object? childrenNumber = freezed,
  }) {
    return _then(_value.copyWith(
      maritalStatus: maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      childrenNumber: childrenNumber == freezed
          ? _value.childrenNumber
          : childrenNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $ClientFamilyDataCopyWith<$Res>
    implements $ClientSearchClientFamilyDataResponseCopyWith<$Res> {
  factory $ClientFamilyDataCopyWith(
          ClientFamilyData value, $Res Function(ClientFamilyData) then) =
      _$ClientFamilyDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "marital_status") ValueObject? maritalStatus,
      @JsonKey(name: "children") ValueObject? children,
      @JsonKey(name: "children_number") int? childrenNumber});
}

/// @nodoc
class _$ClientFamilyDataCopyWithImpl<$Res>
    extends _$ClientSearchClientFamilyDataResponseCopyWithImpl<$Res>
    implements $ClientFamilyDataCopyWith<$Res> {
  _$ClientFamilyDataCopyWithImpl(
      ClientFamilyData _value, $Res Function(ClientFamilyData) _then)
      : super(_value, (v) => _then(v as ClientFamilyData));

  @override
  ClientFamilyData get _value => super._value as ClientFamilyData;

  @override
  $Res call({
    Object? maritalStatus = freezed,
    Object? children = freezed,
    Object? childrenNumber = freezed,
  }) {
    return _then(ClientFamilyData(
      maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      childrenNumber == freezed
          ? _value.childrenNumber
          : childrenNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientFamilyData implements ClientFamilyData {
  const _$ClientFamilyData(
      @JsonKey(name: "marital_status") this.maritalStatus,
      @JsonKey(name: "children") this.children,
      @JsonKey(name: "children_number") this.childrenNumber);

  factory _$ClientFamilyData.fromJson(Map<String, dynamic> json) =>
      _$$ClientFamilyDataFromJson(json);

  @override
  @JsonKey(name: "marital_status")
  final ValueObject? maritalStatus;
  @override
  @JsonKey(name: "children")
  final ValueObject? children;
  @override
  @JsonKey(name: "children_number")
  final int? childrenNumber;

  @override
  String toString() {
    return 'ClientSearchClientFamilyDataResponse(maritalStatus: $maritalStatus, children: $children, childrenNumber: $childrenNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientFamilyData &&
            (identical(other.maritalStatus, maritalStatus) ||
                const DeepCollectionEquality()
                    .equals(other.maritalStatus, maritalStatus)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)) &&
            (identical(other.childrenNumber, childrenNumber) ||
                const DeepCollectionEquality()
                    .equals(other.childrenNumber, childrenNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(maritalStatus) ^
      const DeepCollectionEquality().hash(children) ^
      const DeepCollectionEquality().hash(childrenNumber);

  @JsonKey(ignore: true)
  @override
  $ClientFamilyDataCopyWith<ClientFamilyData> get copyWith =>
      _$ClientFamilyDataCopyWithImpl<ClientFamilyData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientFamilyDataToJson(this);
  }
}

abstract class ClientFamilyData
    implements ClientSearchClientFamilyDataResponse {
  const factory ClientFamilyData(
          @JsonKey(name: "marital_status") ValueObject? maritalStatus,
          @JsonKey(name: "children") ValueObject? children,
          @JsonKey(name: "children_number") int? childrenNumber) =
      _$ClientFamilyData;

  factory ClientFamilyData.fromJson(Map<String, dynamic> json) =
      _$ClientFamilyData.fromJson;

  @override
  @JsonKey(name: "marital_status")
  ValueObject? get maritalStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "children")
  ValueObject? get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "children_number")
  int? get childrenNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ClientFamilyDataCopyWith<ClientFamilyData> get copyWith =>
      throw _privateConstructorUsedError;
}
