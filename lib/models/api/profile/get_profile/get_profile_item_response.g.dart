// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileItem _$$ProfileItemFromJson(Map<String, dynamic> json) =>
    _$ProfileItem(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      emailIsConfirmed: json['email_is_confirmed'] as bool?,
      city: json['city'] == null
          ? null
          : GetProfileCityItemResponse.fromJson(
              json['city'] as Map<String, dynamic>),
      language: json['language'] == null
          ? null
          : GetProfileLanguageItemResponse.fromJson(
              json['language'] as Map<String, dynamic>),
      wallet: json['wallet'] == null
          ? null
          : GetProfileWalletItemResponse.fromJson(
              json['wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileItemToJson(_$ProfileItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'date_of_birth': instance.dateOfBirth,
      'email': instance.email,
      'phone': instance.phone,
      'email_is_confirmed': instance.emailIsConfirmed,
      'city': instance.city,
      'language': instance.language,
      'wallet': instance.wallet,
    };
