import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_city_item_response.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_language_item_response.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_wallet_item_response.dart';

part 'get_profile_item_response.freezed.dart';
part 'get_profile_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GetProfileItemResponse with _$GetProfileItemResponse {
  const factory GetProfileItemResponse({
    /// Идентификатор
    @JsonKey(name: "id") String? id,

    /// Имя
    @JsonKey(name: "first_name") String? firstName,

    /// Отчество
    @JsonKey(name: "middle_name") String? middleName,

    /// Фамилия
    @JsonKey(name: "last_name") String? lastName,

    /// Дата рождения
    @JsonKey(name: "date_of_birth") String? dateOfBirth,

    /// Email
    @JsonKey(name: "email") String? email,

    /// Телефон
    @JsonKey(name: "phone") String? phone,

    /// Подтвержден ли email
    @JsonKey(name: "email_is_confirmed") bool? emailIsConfirmed,

    /// Город
    @JsonKey(name: "city") GetProfileCityItemResponse? city,

    /// Язык
    @JsonKey(name: "language") GetProfileLanguageItemResponse? language,

    /// Кошелек
    @JsonKey(name: "wallet") GetProfileWalletItemResponse? wallet,
  }) = ProfileItem;

  factory GetProfileItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProfileItemResponseFromJson(json);
}
