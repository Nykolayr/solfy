// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_search_client_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientAddress _$$ClientAddressFromJson(Map<String, dynamic> json) =>
    _$ClientAddress(
      json['house_number'] as String?,
      json['district'] == null
          ? null
          : ValueObject.fromJson(json['district'] as Map<String, dynamic>),
      json['apartment_number'] as String?,
      json['locality'] as String?,
      json['admin_area'] == null
          ? null
          : ValueObject.fromJson(json['admin_area'] as Map<String, dynamic>),
      json['street'] as String?,
      json['type_ownership'] == null
          ? null
          : ValueObject.fromJson(
              json['type_ownership'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientAddressToJson(_$ClientAddress instance) =>
    <String, dynamic>{
      'house_number': instance.houseNumber,
      'district': instance.district,
      'apartment_number': instance.apartmentNumber,
      'locality': instance.locality,
      'admin_area': instance.adminArea,
      'street': instance.street,
      'type_ownership': instance.typeOwnership,
    };
