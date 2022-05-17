// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WalletApiClient implements WalletApiClient {
  _WalletApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= '$apiUrl/';
  }

  final Dio _dio;

  String? baseUrl;

  Future<CardUpdateResponse> walletCardUpdate() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CardUpdateResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'bank/v2/wallet_card_update',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    CardUpdateResponse value = CardUpdateResponse.fromJson(_result.data!);
    print('console CardUpdateResponse =>>>> ${value.toJson()}');
    return value;
  }

  Future<WalletGetResp> getWallet() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WalletGetResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'wallet/v1',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    WalletGetResp value = WalletGetResp.fromJson(_result.data!);
    print('console wallet =>>>> ${value.toJson()}');
    return value;
  }

  @override
  Future<CardResponse> sendCardLocal(
      String card_number, String expire_date) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'card_number': card_number,
      'expire_date': expire_date,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WalletGetResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'bank/v2/local_card_send',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    CardResponse value = CardResponse.fromJson(_result.data!);
    print('console sendCardLocal =>>>> ${value.toJson()}');
    return value;
  }

  @override
  Future<CardConfirmResponse> sendCardLocalConfirm(
    String card_uuid,
    String code,
    String local_card_phone_number,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'card_uuid': card_uuid,
      'code': code,
      'local_card_phone_number': local_card_phone_number,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WalletGetResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'bank/v2/local_card_confirm',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    print('console sendCardLocalConfirm1111 =>>>> ${_result.data}');
    CardConfirmResponse value = CardConfirmResponse.fromJson(_result.data!);

    return value;
  }

  @override
  Future<CardResendResponse> sendCardLocalResend(
    String card_uuid,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{
      'card_uuid': card_uuid,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WalletGetResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'bank/v2/local_card_resend',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    CardResendResponse value = CardResendResponse.fromJson(_result.data!);
    print('console sendCardLocalResend =>>>> ${value.toJson()}');
    return value;
  }

  @override
  Future<SchedulesResp> getSchedules() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SchedulesResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'wallet/v1/schedules',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SchedulesResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OperationsResp> getOperations() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OperationsResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'wallet/v1/operations',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OperationsResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RefillmentResp> refillment(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RefillmentResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'test/v1/refillment',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RefillmentResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OperationResp> getOperation(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OperationResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'wallet/v1/operation/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OperationResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ComfortablePaymentUpdateResp> comfortablePaymentUpdate(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ComfortablePaymentUpdateResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'wallet/v1/comfortable_payment_update',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ComfortablePaymentUpdateResp.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
