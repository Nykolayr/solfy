// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_profile_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProfileItemResponse _$GetProfileItemResponseFromJson(
    Map<String, dynamic> json) {
  return ProfileItem.fromJson(json);
}

/// @nodoc
class _$GetProfileItemResponseTearOff {
  const _$GetProfileItemResponseTearOff();

  ProfileItem call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "middle_name") String? middleName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "date_of_birth") String? dateOfBirth,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "email_is_confirmed") bool? emailIsConfirmed,
      @JsonKey(name: "city") GetProfileCityItemResponse? city,
      @JsonKey(name: "language") GetProfileLanguageItemResponse? language,
      @JsonKey(name: "wallet") GetProfileWalletItemResponse? wallet}) {
    return ProfileItem(
      id: id,
      firstName: firstName,
      middleName: middleName,
      lastName: lastName,
      dateOfBirth: dateOfBirth,
      email: email,
      phone: phone,
      emailIsConfirmed: emailIsConfirmed,
      city: city,
      language: language,
      wallet: wallet,
    );
  }

  GetProfileItemResponse fromJson(Map<String, Object> json) {
    return GetProfileItemResponse.fromJson(json);
  }
}

/// @nodoc
const $GetProfileItemResponse = _$GetProfileItemResponseTearOff();

/// @nodoc
mixin _$GetProfileItemResponse {
  /// Идентификатор
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  /// Имя
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;

  /// Отчество
  @JsonKey(name: "middle_name")
  String? get middleName => throw _privateConstructorUsedError;

  /// Фамилия
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;

  /// Дата рождения
  @JsonKey(name: "date_of_birth")
  String? get dateOfBirth => throw _privateConstructorUsedError;

  /// Email
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;

  /// Телефон
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;

  /// Подтвержден ли email
  @JsonKey(name: "email_is_confirmed")
  bool? get emailIsConfirmed => throw _privateConstructorUsedError;

  /// Город
  @JsonKey(name: "city")
  GetProfileCityItemResponse? get city => throw _privateConstructorUsedError;

  /// Язык
  @JsonKey(name: "language")
  GetProfileLanguageItemResponse? get language =>
      throw _privateConstructorUsedError;

  /// Кошелек
  @JsonKey(name: "wallet")
  GetProfileWalletItemResponse? get wallet =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileItemResponseCopyWith<GetProfileItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileItemResponseCopyWith<$Res> {
  factory $GetProfileItemResponseCopyWith(GetProfileItemResponse value,
          $Res Function(GetProfileItemResponse) then) =
      _$GetProfileItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "middle_name") String? middleName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "date_of_birth") String? dateOfBirth,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "email_is_confirmed") bool? emailIsConfirmed,
      @JsonKey(name: "city") GetProfileCityItemResponse? city,
      @JsonKey(name: "language") GetProfileLanguageItemResponse? language,
      @JsonKey(name: "wallet") GetProfileWalletItemResponse? wallet});

  $GetProfileCityItemResponseCopyWith<$Res>? get city;
  $GetProfileLanguageItemResponseCopyWith<$Res>? get language;
  $GetProfileWalletItemResponseCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$GetProfileItemResponseCopyWithImpl<$Res>
    implements $GetProfileItemResponseCopyWith<$Res> {
  _$GetProfileItemResponseCopyWithImpl(this._value, this._then);

  final GetProfileItemResponse _value;
  // ignore: unused_field
  final $Res Function(GetProfileItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? emailIsConfirmed = freezed,
    Object? city = freezed,
    Object? language = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      emailIsConfirmed: emailIsConfirmed == freezed
          ? _value.emailIsConfirmed
          : emailIsConfirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as GetProfileCityItemResponse?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as GetProfileLanguageItemResponse?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as GetProfileWalletItemResponse?,
    ));
  }

  @override
  $GetProfileCityItemResponseCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $GetProfileCityItemResponseCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value));
    });
  }

  @override
  $GetProfileLanguageItemResponseCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $GetProfileLanguageItemResponseCopyWith<$Res>(_value.language!,
        (value) {
      return _then(_value.copyWith(language: value));
    });
  }

  @override
  $GetProfileWalletItemResponseCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $GetProfileWalletItemResponseCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class $ProfileItemCopyWith<$Res>
    implements $GetProfileItemResponseCopyWith<$Res> {
  factory $ProfileItemCopyWith(
          ProfileItem value, $Res Function(ProfileItem) then) =
      _$ProfileItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "middle_name") String? middleName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "date_of_birth") String? dateOfBirth,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "email_is_confirmed") bool? emailIsConfirmed,
      @JsonKey(name: "city") GetProfileCityItemResponse? city,
      @JsonKey(name: "language") GetProfileLanguageItemResponse? language,
      @JsonKey(name: "wallet") GetProfileWalletItemResponse? wallet});

  @override
  $GetProfileCityItemResponseCopyWith<$Res>? get city;
  @override
  $GetProfileLanguageItemResponseCopyWith<$Res>? get language;
  @override
  $GetProfileWalletItemResponseCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$ProfileItemCopyWithImpl<$Res>
    extends _$GetProfileItemResponseCopyWithImpl<$Res>
    implements $ProfileItemCopyWith<$Res> {
  _$ProfileItemCopyWithImpl(
      ProfileItem _value, $Res Function(ProfileItem) _then)
      : super(_value, (v) => _then(v as ProfileItem));

  @override
  ProfileItem get _value => super._value as ProfileItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? emailIsConfirmed = freezed,
    Object? city = freezed,
    Object? language = freezed,
    Object? wallet = freezed,
  }) {
    return _then(ProfileItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      emailIsConfirmed: emailIsConfirmed == freezed
          ? _value.emailIsConfirmed
          : emailIsConfirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as GetProfileCityItemResponse?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as GetProfileLanguageItemResponse?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as GetProfileWalletItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileItem implements ProfileItem {
  const _$ProfileItem(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "middle_name") this.middleName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "date_of_birth") this.dateOfBirth,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "email_is_confirmed") this.emailIsConfirmed,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "language") this.language,
      @JsonKey(name: "wallet") this.wallet});

  factory _$ProfileItem.fromJson(Map<String, dynamic> json) =>
      _$$ProfileItemFromJson(json);

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  final String? id;
  @override

  /// Имя
  @JsonKey(name: "first_name")
  final String? firstName;
  @override

  /// Отчество
  @JsonKey(name: "middle_name")
  final String? middleName;
  @override

  /// Фамилия
  @JsonKey(name: "last_name")
  final String? lastName;
  @override

  /// Дата рождения
  @JsonKey(name: "date_of_birth")
  final String? dateOfBirth;
  @override

  /// Email
  @JsonKey(name: "email")
  final String? email;
  @override

  /// Телефон
  @JsonKey(name: "phone")
  final String? phone;
  @override

  /// Подтвержден ли email
  @JsonKey(name: "email_is_confirmed")
  final bool? emailIsConfirmed;
  @override

  /// Город
  @JsonKey(name: "city")
  final GetProfileCityItemResponse? city;
  @override

  /// Язык
  @JsonKey(name: "language")
  final GetProfileLanguageItemResponse? language;
  @override

  /// Кошелек
  @JsonKey(name: "wallet")
  final GetProfileWalletItemResponse? wallet;

  @override
  String toString() {
    return 'GetProfileItemResponse(id: $id, firstName: $firstName, middleName: $middleName, lastName: $lastName, dateOfBirth: $dateOfBirth, email: $email, phone: $phone, emailIsConfirmed: $emailIsConfirmed, city: $city, language: $language, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.emailIsConfirmed, emailIsConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.emailIsConfirmed, emailIsConfirmed)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(emailIsConfirmed) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(wallet);

  @JsonKey(ignore: true)
  @override
  $ProfileItemCopyWith<ProfileItem> get copyWith =>
      _$ProfileItemCopyWithImpl<ProfileItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileItemToJson(this);
  }
}

abstract class ProfileItem implements GetProfileItemResponse {
  const factory ProfileItem(
          {@JsonKey(name: "id") String? id,
          @JsonKey(name: "first_name") String? firstName,
          @JsonKey(name: "middle_name") String? middleName,
          @JsonKey(name: "last_name") String? lastName,
          @JsonKey(name: "date_of_birth") String? dateOfBirth,
          @JsonKey(name: "email") String? email,
          @JsonKey(name: "phone") String? phone,
          @JsonKey(name: "email_is_confirmed") bool? emailIsConfirmed,
          @JsonKey(name: "city") GetProfileCityItemResponse? city,
          @JsonKey(name: "language") GetProfileLanguageItemResponse? language,
          @JsonKey(name: "wallet") GetProfileWalletItemResponse? wallet}) =
      _$ProfileItem;

  factory ProfileItem.fromJson(Map<String, dynamic> json) =
      _$ProfileItem.fromJson;

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @override

  /// Имя
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @override

  /// Отчество
  @JsonKey(name: "middle_name")
  String? get middleName => throw _privateConstructorUsedError;
  @override

  /// Фамилия
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @override

  /// Дата рождения
  @JsonKey(name: "date_of_birth")
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @override

  /// Email
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @override

  /// Телефон
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @override

  /// Подтвержден ли email
  @JsonKey(name: "email_is_confirmed")
  bool? get emailIsConfirmed => throw _privateConstructorUsedError;
  @override

  /// Город
  @JsonKey(name: "city")
  GetProfileCityItemResponse? get city => throw _privateConstructorUsedError;
  @override

  /// Язык
  @JsonKey(name: "language")
  GetProfileLanguageItemResponse? get language =>
      throw _privateConstructorUsedError;
  @override

  /// Кошелек
  @JsonKey(name: "wallet")
  GetProfileWalletItemResponse? get wallet =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ProfileItemCopyWith<ProfileItem> get copyWith =>
      throw _privateConstructorUsedError;
}
