// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientSearchResponse _$ClientSearchResponseFromJson(Map<String, dynamic> json) {
  return ClientSearchResp.fromJson(json);
}

/// @nodoc
class _$ClientSearchResponseTearOff {
  const _$ClientSearchResponseTearOff();

  ClientSearchResp call(
      {@JsonKey(name: "clientData")
          ClientSearchClientDataResponse? clientData,
      @JsonKey(name: "clientLivingAddress")
          ClientSearchClientAddressResponse? clientLivingAddress,
      @JsonKey(name: "clientRegistrationAddress")
          ClientSearchClientAddressResponse? clientRegistrationAddress,
      @JsonKey(name: "clientTemporaryAddress")
          ClientSearchClientAddressResponse? clientTemporaryAddress,
      @JsonKey(name: "clientIncome")
          ClientSearchClientIncomeResponse? clientIncome,
      @JsonKey(name: "clientFamilyData")
          ClientSearchClientFamilyDataResponse? clientFamilyData,
      @JsonKey(name: "clientJobInfo")
          ClientSearchClientJobInfoResponse? clientJobInfo,
      @JsonKey(name: "clientProperties")
          List<ClientSearchClientPropertiesItemResponse>? clientProperties,
      @JsonKey(name: "clientVehicles")
          List<ClientSearchClientPropertiesItemResponse>? clientVehicles,
      @JsonKey(name: "code_word")
          String? codeWord}) {
    return ClientSearchResp(
      clientData: clientData,
      clientLivingAddress: clientLivingAddress,
      clientRegistrationAddress: clientRegistrationAddress,
      clientTemporaryAddress: clientTemporaryAddress,
      clientIncome: clientIncome,
      clientFamilyData: clientFamilyData,
      clientJobInfo: clientJobInfo,
      clientProperties: clientProperties,
      clientVehicles: clientVehicles,
      codeWord: codeWord,
    );
  }

  ClientSearchResponse fromJson(Map<String, Object> json) {
    return ClientSearchResponse.fromJson(json);
  }
}

/// @nodoc
const $ClientSearchResponse = _$ClientSearchResponseTearOff();

/// @nodoc
mixin _$ClientSearchResponse {
  @JsonKey(name: "clientData")
  ClientSearchClientDataResponse? get clientData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "clientLivingAddress")
  ClientSearchClientAddressResponse? get clientLivingAddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "clientRegistrationAddress")
  ClientSearchClientAddressResponse? get clientRegistrationAddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "clientTemporaryAddress")
  ClientSearchClientAddressResponse? get clientTemporaryAddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "clientIncome")
  ClientSearchClientIncomeResponse? get clientIncome =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "clientFamilyData")
  ClientSearchClientFamilyDataResponse? get clientFamilyData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "clientJobInfo")
  ClientSearchClientJobInfoResponse? get clientJobInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "clientProperties")
  List<ClientSearchClientPropertiesItemResponse>? get clientProperties =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "clientVehicles")
  List<ClientSearchClientPropertiesItemResponse>? get clientVehicles =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "code_word")
  String? get codeWord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientSearchResponseCopyWith<ClientSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientSearchResponseCopyWith<$Res> {
  factory $ClientSearchResponseCopyWith(ClientSearchResponse value,
          $Res Function(ClientSearchResponse) then) =
      _$ClientSearchResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "clientData")
          ClientSearchClientDataResponse? clientData,
      @JsonKey(name: "clientLivingAddress")
          ClientSearchClientAddressResponse? clientLivingAddress,
      @JsonKey(name: "clientRegistrationAddress")
          ClientSearchClientAddressResponse? clientRegistrationAddress,
      @JsonKey(name: "clientTemporaryAddress")
          ClientSearchClientAddressResponse? clientTemporaryAddress,
      @JsonKey(name: "clientIncome")
          ClientSearchClientIncomeResponse? clientIncome,
      @JsonKey(name: "clientFamilyData")
          ClientSearchClientFamilyDataResponse? clientFamilyData,
      @JsonKey(name: "clientJobInfo")
          ClientSearchClientJobInfoResponse? clientJobInfo,
      @JsonKey(name: "clientProperties")
          List<ClientSearchClientPropertiesItemResponse>? clientProperties,
      @JsonKey(name: "clientVehicles")
          List<ClientSearchClientPropertiesItemResponse>? clientVehicles,
      @JsonKey(name: "code_word")
          String? codeWord});

  $ClientSearchClientDataResponseCopyWith<$Res>? get clientData;
  $ClientSearchClientAddressResponseCopyWith<$Res>? get clientLivingAddress;
  $ClientSearchClientAddressResponseCopyWith<$Res>?
      get clientRegistrationAddress;
  $ClientSearchClientAddressResponseCopyWith<$Res>? get clientTemporaryAddress;
  $ClientSearchClientIncomeResponseCopyWith<$Res>? get clientIncome;
  $ClientSearchClientFamilyDataResponseCopyWith<$Res>? get clientFamilyData;
  $ClientSearchClientJobInfoResponseCopyWith<$Res>? get clientJobInfo;
}

/// @nodoc
class _$ClientSearchResponseCopyWithImpl<$Res>
    implements $ClientSearchResponseCopyWith<$Res> {
  _$ClientSearchResponseCopyWithImpl(this._value, this._then);

  final ClientSearchResponse _value;
  // ignore: unused_field
  final $Res Function(ClientSearchResponse) _then;

  @override
  $Res call({
    Object? clientData = freezed,
    Object? clientLivingAddress = freezed,
    Object? clientRegistrationAddress = freezed,
    Object? clientTemporaryAddress = freezed,
    Object? clientIncome = freezed,
    Object? clientFamilyData = freezed,
    Object? clientJobInfo = freezed,
    Object? clientProperties = freezed,
    Object? clientVehicles = freezed,
    Object? codeWord = freezed,
  }) {
    return _then(_value.copyWith(
      clientData: clientData == freezed
          ? _value.clientData
          : clientData // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientDataResponse?,
      clientLivingAddress: clientLivingAddress == freezed
          ? _value.clientLivingAddress
          : clientLivingAddress // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientAddressResponse?,
      clientRegistrationAddress: clientRegistrationAddress == freezed
          ? _value.clientRegistrationAddress
          : clientRegistrationAddress // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientAddressResponse?,
      clientTemporaryAddress: clientTemporaryAddress == freezed
          ? _value.clientTemporaryAddress
          : clientTemporaryAddress // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientAddressResponse?,
      clientIncome: clientIncome == freezed
          ? _value.clientIncome
          : clientIncome // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientIncomeResponse?,
      clientFamilyData: clientFamilyData == freezed
          ? _value.clientFamilyData
          : clientFamilyData // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientFamilyDataResponse?,
      clientJobInfo: clientJobInfo == freezed
          ? _value.clientJobInfo
          : clientJobInfo // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientJobInfoResponse?,
      clientProperties: clientProperties == freezed
          ? _value.clientProperties
          : clientProperties // ignore: cast_nullable_to_non_nullable
              as List<ClientSearchClientPropertiesItemResponse>?,
      clientVehicles: clientVehicles == freezed
          ? _value.clientVehicles
          : clientVehicles // ignore: cast_nullable_to_non_nullable
              as List<ClientSearchClientPropertiesItemResponse>?,
      codeWord: codeWord == freezed
          ? _value.codeWord
          : codeWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ClientSearchClientDataResponseCopyWith<$Res>? get clientData {
    if (_value.clientData == null) {
      return null;
    }

    return $ClientSearchClientDataResponseCopyWith<$Res>(_value.clientData!,
        (value) {
      return _then(_value.copyWith(clientData: value));
    });
  }

  @override
  $ClientSearchClientAddressResponseCopyWith<$Res>? get clientLivingAddress {
    if (_value.clientLivingAddress == null) {
      return null;
    }

    return $ClientSearchClientAddressResponseCopyWith<$Res>(
        _value.clientLivingAddress!, (value) {
      return _then(_value.copyWith(clientLivingAddress: value));
    });
  }

  @override
  $ClientSearchClientAddressResponseCopyWith<$Res>?
      get clientRegistrationAddress {
    if (_value.clientRegistrationAddress == null) {
      return null;
    }

    return $ClientSearchClientAddressResponseCopyWith<$Res>(
        _value.clientRegistrationAddress!, (value) {
      return _then(_value.copyWith(clientRegistrationAddress: value));
    });
  }

  @override
  $ClientSearchClientAddressResponseCopyWith<$Res>? get clientTemporaryAddress {
    if (_value.clientTemporaryAddress == null) {
      return null;
    }

    return $ClientSearchClientAddressResponseCopyWith<$Res>(
        _value.clientTemporaryAddress!, (value) {
      return _then(_value.copyWith(clientTemporaryAddress: value));
    });
  }

  @override
  $ClientSearchClientIncomeResponseCopyWith<$Res>? get clientIncome {
    if (_value.clientIncome == null) {
      return null;
    }

    return $ClientSearchClientIncomeResponseCopyWith<$Res>(_value.clientIncome!,
        (value) {
      return _then(_value.copyWith(clientIncome: value));
    });
  }

  @override
  $ClientSearchClientFamilyDataResponseCopyWith<$Res>? get clientFamilyData {
    if (_value.clientFamilyData == null) {
      return null;
    }

    return $ClientSearchClientFamilyDataResponseCopyWith<$Res>(
        _value.clientFamilyData!, (value) {
      return _then(_value.copyWith(clientFamilyData: value));
    });
  }

  @override
  $ClientSearchClientJobInfoResponseCopyWith<$Res>? get clientJobInfo {
    if (_value.clientJobInfo == null) {
      return null;
    }

    return $ClientSearchClientJobInfoResponseCopyWith<$Res>(
        _value.clientJobInfo!, (value) {
      return _then(_value.copyWith(clientJobInfo: value));
    });
  }
}

/// @nodoc
abstract class $ClientSearchRespCopyWith<$Res>
    implements $ClientSearchResponseCopyWith<$Res> {
  factory $ClientSearchRespCopyWith(
          ClientSearchResp value, $Res Function(ClientSearchResp) then) =
      _$ClientSearchRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "clientData")
          ClientSearchClientDataResponse? clientData,
      @JsonKey(name: "clientLivingAddress")
          ClientSearchClientAddressResponse? clientLivingAddress,
      @JsonKey(name: "clientRegistrationAddress")
          ClientSearchClientAddressResponse? clientRegistrationAddress,
      @JsonKey(name: "clientTemporaryAddress")
          ClientSearchClientAddressResponse? clientTemporaryAddress,
      @JsonKey(name: "clientIncome")
          ClientSearchClientIncomeResponse? clientIncome,
      @JsonKey(name: "clientFamilyData")
          ClientSearchClientFamilyDataResponse? clientFamilyData,
      @JsonKey(name: "clientJobInfo")
          ClientSearchClientJobInfoResponse? clientJobInfo,
      @JsonKey(name: "clientProperties")
          List<ClientSearchClientPropertiesItemResponse>? clientProperties,
      @JsonKey(name: "clientVehicles")
          List<ClientSearchClientPropertiesItemResponse>? clientVehicles,
      @JsonKey(name: "code_word")
          String? codeWord});

  @override
  $ClientSearchClientDataResponseCopyWith<$Res>? get clientData;
  @override
  $ClientSearchClientAddressResponseCopyWith<$Res>? get clientLivingAddress;
  @override
  $ClientSearchClientAddressResponseCopyWith<$Res>?
      get clientRegistrationAddress;
  @override
  $ClientSearchClientAddressResponseCopyWith<$Res>? get clientTemporaryAddress;
  @override
  $ClientSearchClientIncomeResponseCopyWith<$Res>? get clientIncome;
  @override
  $ClientSearchClientFamilyDataResponseCopyWith<$Res>? get clientFamilyData;
  @override
  $ClientSearchClientJobInfoResponseCopyWith<$Res>? get clientJobInfo;
}

/// @nodoc
class _$ClientSearchRespCopyWithImpl<$Res>
    extends _$ClientSearchResponseCopyWithImpl<$Res>
    implements $ClientSearchRespCopyWith<$Res> {
  _$ClientSearchRespCopyWithImpl(
      ClientSearchResp _value, $Res Function(ClientSearchResp) _then)
      : super(_value, (v) => _then(v as ClientSearchResp));

  @override
  ClientSearchResp get _value => super._value as ClientSearchResp;

  @override
  $Res call({
    Object? clientData = freezed,
    Object? clientLivingAddress = freezed,
    Object? clientRegistrationAddress = freezed,
    Object? clientTemporaryAddress = freezed,
    Object? clientIncome = freezed,
    Object? clientFamilyData = freezed,
    Object? clientJobInfo = freezed,
    Object? clientProperties = freezed,
    Object? clientVehicles = freezed,
    Object? codeWord = freezed,
  }) {
    return _then(ClientSearchResp(
      clientData: clientData == freezed
          ? _value.clientData
          : clientData // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientDataResponse?,
      clientLivingAddress: clientLivingAddress == freezed
          ? _value.clientLivingAddress
          : clientLivingAddress // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientAddressResponse?,
      clientRegistrationAddress: clientRegistrationAddress == freezed
          ? _value.clientRegistrationAddress
          : clientRegistrationAddress // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientAddressResponse?,
      clientTemporaryAddress: clientTemporaryAddress == freezed
          ? _value.clientTemporaryAddress
          : clientTemporaryAddress // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientAddressResponse?,
      clientIncome: clientIncome == freezed
          ? _value.clientIncome
          : clientIncome // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientIncomeResponse?,
      clientFamilyData: clientFamilyData == freezed
          ? _value.clientFamilyData
          : clientFamilyData // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientFamilyDataResponse?,
      clientJobInfo: clientJobInfo == freezed
          ? _value.clientJobInfo
          : clientJobInfo // ignore: cast_nullable_to_non_nullable
              as ClientSearchClientJobInfoResponse?,
      clientProperties: clientProperties == freezed
          ? _value.clientProperties
          : clientProperties // ignore: cast_nullable_to_non_nullable
              as List<ClientSearchClientPropertiesItemResponse>?,
      clientVehicles: clientVehicles == freezed
          ? _value.clientVehicles
          : clientVehicles // ignore: cast_nullable_to_non_nullable
              as List<ClientSearchClientPropertiesItemResponse>?,
      codeWord: codeWord == freezed
          ? _value.codeWord
          : codeWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientSearchResp implements ClientSearchResp {
  const _$ClientSearchResp(
      {@JsonKey(name: "clientData")
          this.clientData,
      @JsonKey(name: "clientLivingAddress")
          this.clientLivingAddress,
      @JsonKey(name: "clientRegistrationAddress")
          this.clientRegistrationAddress,
      @JsonKey(name: "clientTemporaryAddress")
          this.clientTemporaryAddress,
      @JsonKey(name: "clientIncome")
          this.clientIncome,
      @JsonKey(name: "clientFamilyData")
          this.clientFamilyData,
      @JsonKey(name: "clientJobInfo")
          this.clientJobInfo,
      @JsonKey(name: "clientProperties")
          this.clientProperties,
      @JsonKey(name: "clientVehicles")
          this.clientVehicles,
      @JsonKey(name: "code_word")
          this.codeWord});

  factory _$ClientSearchResp.fromJson(Map<String, dynamic> json) {
    if (json['last_name '] == null) {
      return _$$ClientSearchRespFromJson(json);
    } else {
      return _$$ClientSearchRespFromJson(exchangev1inv2(json));
    }
  }

  @override
  @JsonKey(name: "clientData")
  final ClientSearchClientDataResponse? clientData;
  @override
  @JsonKey(name: "clientLivingAddress")
  final ClientSearchClientAddressResponse? clientLivingAddress;
  @override
  @JsonKey(name: "clientRegistrationAddress")
  final ClientSearchClientAddressResponse? clientRegistrationAddress;
  @override
  @JsonKey(name: "clientTemporaryAddress")
  final ClientSearchClientAddressResponse? clientTemporaryAddress;
  @override
  @JsonKey(name: "clientIncome")
  final ClientSearchClientIncomeResponse? clientIncome;
  @override
  @JsonKey(name: "clientFamilyData")
  final ClientSearchClientFamilyDataResponse? clientFamilyData;
  @override
  @JsonKey(name: "clientJobInfo")
  final ClientSearchClientJobInfoResponse? clientJobInfo;
  @override
  @JsonKey(name: "clientProperties")
  final List<ClientSearchClientPropertiesItemResponse>? clientProperties;
  @override
  @JsonKey(name: "clientVehicles")
  final List<ClientSearchClientPropertiesItemResponse>? clientVehicles;
  @override
  @JsonKey(name: "code_word")
  final String? codeWord;

  @override
  String toString() {
    return 'ClientSearchResponse(clientData: $clientData, clientLivingAddress: $clientLivingAddress, clientRegistrationAddress: $clientRegistrationAddress, clientTemporaryAddress: $clientTemporaryAddress, clientIncome: $clientIncome, clientFamilyData: $clientFamilyData, clientJobInfo: $clientJobInfo, clientProperties: $clientProperties, clientVehicles: $clientVehicles, codeWord: $codeWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientSearchResp &&
            (identical(other.clientData, clientData) ||
                const DeepCollectionEquality()
                    .equals(other.clientData, clientData)) &&
            (identical(other.clientLivingAddress, clientLivingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.clientLivingAddress, clientLivingAddress)) &&
            (identical(other.clientRegistrationAddress,
                    clientRegistrationAddress) ||
                const DeepCollectionEquality().equals(
                    other.clientRegistrationAddress,
                    clientRegistrationAddress)) &&
            (identical(other.clientTemporaryAddress, clientTemporaryAddress) ||
                const DeepCollectionEquality().equals(
                    other.clientTemporaryAddress, clientTemporaryAddress)) &&
            (identical(other.clientIncome, clientIncome) ||
                const DeepCollectionEquality()
                    .equals(other.clientIncome, clientIncome)) &&
            (identical(other.clientFamilyData, clientFamilyData) ||
                const DeepCollectionEquality()
                    .equals(other.clientFamilyData, clientFamilyData)) &&
            (identical(other.clientJobInfo, clientJobInfo) ||
                const DeepCollectionEquality()
                    .equals(other.clientJobInfo, clientJobInfo)) &&
            (identical(other.clientProperties, clientProperties) ||
                const DeepCollectionEquality()
                    .equals(other.clientProperties, clientProperties)) &&
            (identical(other.clientVehicles, clientVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.clientVehicles, clientVehicles)) &&
            (identical(other.codeWord, codeWord) ||
                const DeepCollectionEquality()
                    .equals(other.codeWord, codeWord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(clientData) ^
      const DeepCollectionEquality().hash(clientLivingAddress) ^
      const DeepCollectionEquality().hash(clientRegistrationAddress) ^
      const DeepCollectionEquality().hash(clientTemporaryAddress) ^
      const DeepCollectionEquality().hash(clientIncome) ^
      const DeepCollectionEquality().hash(clientFamilyData) ^
      const DeepCollectionEquality().hash(clientJobInfo) ^
      const DeepCollectionEquality().hash(clientProperties) ^
      const DeepCollectionEquality().hash(clientVehicles) ^
      const DeepCollectionEquality().hash(codeWord);

  @JsonKey(ignore: true)
  @override
  $ClientSearchRespCopyWith<ClientSearchResp> get copyWith =>
      _$ClientSearchRespCopyWithImpl<ClientSearchResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientSearchRespToJson(this);
  }
}

abstract class ClientSearchResp implements ClientSearchResponse {
  const factory ClientSearchResp(
      {@JsonKey(name: "clientData")
          ClientSearchClientDataResponse? clientData,
      @JsonKey(name: "clientLivingAddress")
          ClientSearchClientAddressResponse? clientLivingAddress,
      @JsonKey(name: "clientRegistrationAddress")
          ClientSearchClientAddressResponse? clientRegistrationAddress,
      @JsonKey(name: "clientTemporaryAddress")
          ClientSearchClientAddressResponse? clientTemporaryAddress,
      @JsonKey(name: "clientIncome")
          ClientSearchClientIncomeResponse? clientIncome,
      @JsonKey(name: "clientFamilyData")
          ClientSearchClientFamilyDataResponse? clientFamilyData,
      @JsonKey(name: "clientJobInfo")
          ClientSearchClientJobInfoResponse? clientJobInfo,
      @JsonKey(name: "clientProperties")
          List<ClientSearchClientPropertiesItemResponse>? clientProperties,
      @JsonKey(name: "clientVehicles")
          List<ClientSearchClientPropertiesItemResponse>? clientVehicles,
      @JsonKey(name: "code_word")
          String? codeWord}) = _$ClientSearchResp;

  factory ClientSearchResp.fromJson(Map<String, dynamic> json) =
      _$ClientSearchResp.fromJson;

  @override
  @JsonKey(name: "clientData")
  ClientSearchClientDataResponse? get clientData =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "clientLivingAddress")
  ClientSearchClientAddressResponse? get clientLivingAddress =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "clientRegistrationAddress")
  ClientSearchClientAddressResponse? get clientRegistrationAddress =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "clientTemporaryAddress")
  ClientSearchClientAddressResponse? get clientTemporaryAddress =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "clientIncome")
  ClientSearchClientIncomeResponse? get clientIncome =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "clientFamilyData")
  ClientSearchClientFamilyDataResponse? get clientFamilyData =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "clientJobInfo")
  ClientSearchClientJobInfoResponse? get clientJobInfo =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "clientProperties")
  List<ClientSearchClientPropertiesItemResponse>? get clientProperties =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "clientVehicles")
  List<ClientSearchClientPropertiesItemResponse>? get clientVehicles =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "code_word")
  String? get codeWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ClientSearchRespCopyWith<ClientSearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}
