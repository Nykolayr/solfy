// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AccountApiClient implements AccountApiClient {
  _AccountApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= '$apiUrl/account/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SmsSendResp> smsSend(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SmsSendResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/sms_send',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SmsSendResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SmsConfirmResp> smsConfirm(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SmsConfirmResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/sms_confirm',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SmsConfirmResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<EmailSendResp> emailSend(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EmailSendResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/email_send',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EmailSendResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PinSetResp> pinSet(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PinSetResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/pin_set',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PinSetResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PinConfirmResp> pinConfirm(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PinConfirmResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/pin_confirm',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PinConfirmResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PinForgotResp> pinForgot() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PinForgotResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/pin_forgot',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PinForgotResp.fromJson(_result.data!);
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
