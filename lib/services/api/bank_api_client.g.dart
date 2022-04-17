// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BankApiClient implements BankApiClient {
  _BankApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api-edge.docu.ru/bank/v2/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ClientSearchResp> clientSearch(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClientSearchResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/client_search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ClientSearchResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ClientScoreResp> clientScore(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    // TODO: тут подмена request для отправки V2
    _data.addAll(clientScoreRequestV2(request));

    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClientScoreResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/client_score',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ClientScoreResp.fromJson(_result.data!);
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
