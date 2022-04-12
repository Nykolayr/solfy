// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_score_client_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientScoreClientAddressRequest _$ClientScoreClientAddressRequestFromJson(
        Map<String, dynamic> json) =>
    ClientScoreClientAddressRequest(
      houseNumber: json['house_number'] as String?,
      district: json['district'] as int?,
      apartmentNumber: json['apartment_number'] as String?,
      locality: json['locality'] as String?,
      adminArea: json['admin_area'] as int?,
      street: json['street'] as String?,
      typeOwnership: json['type_ownership'] as int?,
    );

Map<String, dynamic> _$ClientScoreClientAddressRequestToJson(
        ClientScoreClientAddressRequest instance) =>
    <String, dynamic>{
      'house_number': instance.houseNumber,
      'district': instance.district,
      'apartment_number': instance.apartmentNumber,
      'locality': instance.locality,
      'admin_area': instance.adminArea,
      'street': instance.street,
      'type_ownership': instance.typeOwnership,
    };
