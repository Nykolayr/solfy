// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BankApiClient implements BankApiClient {
  _BankApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= '$apiUrl/bank/v2/';
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
    var _result;
    // try {
    _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClientSearchResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/client_search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    print('object >>>>>>>>>>> ${_result.data!}');
    return ClientSearchResp.fromJson(_result.data!);
    // } on DioError catch (error) {
    //   print('errror >>>>>>>>>>> ${error.response!.data}');
    //   return ClientSearchResp.fromJson(error.response!.data);
    // }
  }

  @override
  Future<ClientScoreResp> clientScore(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};

    // TODO: тут подмена request для отправки V2

    _data.addAll(await clientScoreRequestV2(request));

    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClientScoreResp>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/client_score',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ClientScoreResp.fromJson(_result.data!);
    showApi = _result.data!;
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
