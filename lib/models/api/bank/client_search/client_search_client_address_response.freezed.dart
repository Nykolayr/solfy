// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_search_client_address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientSearchClientAddressResponse _$ClientSearchClientAddressResponseFromJson(
    Map<String, dynamic> json) {
  return ClientAddress.fromJson(json);
}

/// @nodoc
class _$ClientSearchClientAddressResponseTearOff {
  const _$ClientSearchClientAddressResponseTearOff();

  ClientAddress call(
      @JsonKey(name: "house_number") String? houseNumber,
      @JsonKey(name: "district") ValueObject? district,
      @JsonKey(name: "apartment_number") String? apartmentNumber,
      @JsonKey(name: "locality") String? locality,
      @JsonKey(name: "admin_area") ValueObject? adminArea,
      @JsonKey(name: "street") String? street,
      @JsonKey(name: "type_ownership") ValueObject? typeOwnership) {
    return ClientAddress(
      houseNumber,
      district,
      apartmentNumber,
      locality,
      adminArea,
      street,
      typeOwnership,
    );
  }

  ClientSearchClientAddressResponse fromJson(Map<String, Object> json) {
    return ClientSearchClientAddressResponse.fromJson(json);
  }
}

/// @nodoc
const $ClientSearchClientAddressResponse =
    _$ClientSearchClientAddressResponseTearOff();

/// @nodoc
mixin _$ClientSearchClientAddressResponse {
  @JsonKey(name: "house_number")
  String? get houseNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "district")
  ValueObject? get district => throw _privateConstructorUsedError;
  @JsonKey(name: "apartment_number")
  String? get apartmentNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "locality")
  String? get locality => throw _privateConstructorUsedError;
  @JsonKey(name: "admin_area")
  ValueObject? get adminArea => throw _privateConstructorUsedError;
  @JsonKey(name: "street")
  String? get street => throw _privateConstructorUsedError;
  @JsonKey(name: "type_ownership")
  ValueObject? get typeOwnership => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientSearchClientAddressResponseCopyWith<ClientSearchClientAddressResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientSearchClientAddressResponseCopyWith<$Res> {
  factory $ClientSearchClientAddressResponseCopyWith(
          ClientSearchClientAddressResponse value,
          $Res Function(ClientSearchClientAddressResponse) then) =
      _$ClientSearchClientAddressResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "house_number") String? houseNumber,
      @JsonKey(name: "district") ValueObject? district,
      @JsonKey(name: "apartment_number") String? apartmentNumber,
      @JsonKey(name: "locality") String? locality,
      @JsonKey(name: "admin_area") ValueObject? adminArea,
      @JsonKey(name: "street") String? street,
      @JsonKey(name: "type_ownership") ValueObject? typeOwnership});
}

/// @nodoc
class _$ClientSearchClientAddressResponseCopyWithImpl<$Res>
    implements $ClientSearchClientAddressResponseCopyWith<$Res> {
  _$ClientSearchClientAddressResponseCopyWithImpl(this._value, this._then);

  final ClientSearchClientAddressResponse _value;
  // ignore: unused_field
  final $Res Function(ClientSearchClientAddressResponse) _then;

  @override
  $Res call({
    Object? houseNumber = freezed,
    Object? district = freezed,
    Object? apartmentNumber = freezed,
    Object? locality = freezed,
    Object? adminArea = freezed,
    Object? street = freezed,
    Object? typeOwnership = freezed,
  }) {
    return _then(_value.copyWith(
      houseNumber: houseNumber == freezed
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      apartmentNumber: apartmentNumber == freezed
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      adminArea: adminArea == freezed
          ? _value.adminArea
          : adminArea // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOwnership: typeOwnership == freezed
          ? _value.typeOwnership
          : typeOwnership // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
    ));
  }
}

/// @nodoc
abstract class $ClientAddressCopyWith<$Res>
    implements $ClientSearchClientAddressResponseCopyWith<$Res> {
  factory $ClientAddressCopyWith(
          ClientAddress value, $Res Function(ClientAddress) then) =
      _$ClientAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "house_number") String? houseNumber,
      @JsonKey(name: "district") ValueObject? district,
      @JsonKey(name: "apartment_number") String? apartmentNumber,
      @JsonKey(name: "locality") String? locality,
      @JsonKey(name: "admin_area") ValueObject? adminArea,
      @JsonKey(name: "street") String? street,
      @JsonKey(name: "type_ownership") ValueObject? typeOwnership});
}

/// @nodoc
class _$ClientAddressCopyWithImpl<$Res>
    extends _$ClientSearchClientAddressResponseCopyWithImpl<$Res>
    implements $ClientAddressCopyWith<$Res> {
  _$ClientAddressCopyWithImpl(
      ClientAddress _value, $Res Function(ClientAddress) _then)
      : super(_value, (v) => _then(v as ClientAddress));

  @override
  ClientAddress get _value => super._value as ClientAddress;

  @override
  $Res call({
    Object? houseNumber = freezed,
    Object? district = freezed,
    Object? apartmentNumber = freezed,
    Object? locality = freezed,
    Object? adminArea = freezed,
    Object? street = freezed,
    Object? typeOwnership = freezed,
  }) {
    return _then(ClientAddress(
      houseNumber == freezed
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      apartmentNumber == freezed
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      adminArea == freezed
          ? _value.adminArea
          : adminArea // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOwnership == freezed
          ? _value.typeOwnership
          : typeOwnership // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientAddress implements ClientAddress {
  const _$ClientAddress(
      @JsonKey(name: "house_number") this.houseNumber,
      @JsonKey(name: "district") this.district,
      @JsonKey(name: "apartment_number") this.apartmentNumber,
      @JsonKey(name: "locality") this.locality,
      @JsonKey(name: "admin_area") this.adminArea,
      @JsonKey(name: "street") this.street,
      @JsonKey(name: "type_ownership") this.typeOwnership);

  factory _$ClientAddress.fromJson(Map<String, dynamic> json) =>
      _$$ClientAddressFromJson(json);

  @override
  @JsonKey(name: "house_number")
  final String? houseNumber;
  @override
  @JsonKey(name: "district")
  final ValueObject? district;
  @override
  @JsonKey(name: "apartment_number")
  final String? apartmentNumber;
  @override
  @JsonKey(name: "locality")
  final String? locality;
  @override
  @JsonKey(name: "admin_area")
  final ValueObject? adminArea;
  @override
  @JsonKey(name: "street")
  final String? street;
  @override
  @JsonKey(name: "type_ownership")
  final ValueObject? typeOwnership;

  @override
  String toString() {
    return 'ClientSearchClientAddressResponse(houseNumber: $houseNumber, district: $district, apartmentNumber: $apartmentNumber, locality: $locality, adminArea: $adminArea, street: $street, typeOwnership: $typeOwnership)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientAddress &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.houseNumber, houseNumber)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.apartmentNumber, apartmentNumber) ||
                const DeepCollectionEquality()
                    .equals(other.apartmentNumber, apartmentNumber)) &&
            (identical(other.locality, locality) ||
                const DeepCollectionEquality()
                    .equals(other.locality, locality)) &&
            (identical(other.adminArea, adminArea) ||
                const DeepCollectionEquality()
                    .equals(other.adminArea, adminArea)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.typeOwnership, typeOwnership) ||
                const DeepCollectionEquality()
                    .equals(other.typeOwnership, typeOwnership)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(houseNumber) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(apartmentNumber) ^
      const DeepCollectionEquality().hash(locality) ^
      const DeepCollectionEquality().hash(adminArea) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(typeOwnership);

  @JsonKey(ignore: true)
  @override
  $ClientAddressCopyWith<ClientAddress> get copyWith =>
      _$ClientAddressCopyWithImpl<ClientAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientAddressToJson(this);
  }
}

abstract class ClientAddress implements ClientSearchClientAddressResponse {
  const factory ClientAddress(
          @JsonKey(name: "house_number") String? houseNumber,
          @JsonKey(name: "district") ValueObject? district,
          @JsonKey(name: "apartment_number") String? apartmentNumber,
          @JsonKey(name: "locality") String? locality,
          @JsonKey(name: "admin_area") ValueObject? adminArea,
          @JsonKey(name: "street") String? street,
          @JsonKey(name: "type_ownership") ValueObject? typeOwnership) =
      _$ClientAddress;

  factory ClientAddress.fromJson(Map<String, dynamic> json) =
      _$ClientAddress.fromJson;

  @override
  @JsonKey(name: "house_number")
  String? get houseNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "district")
  ValueObject? get district => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "apartment_number")
  String? get apartmentNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "locality")
  String? get locality => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "admin_area")
  ValueObject? get adminArea => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "street")
  String? get street => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "type_ownership")
  ValueObject? get typeOwnership => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ClientAddressCopyWith<ClientAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
