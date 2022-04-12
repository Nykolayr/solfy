import 'dart:convert';

import 'package:moor/moor.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_response.dart';

class ClientSearchResponseConverter extends TypeConverter<ClientSearchResponse, String> {
  const ClientSearchResponseConverter();
  @override
  ClientSearchResponse? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return ClientSearchResponse.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String? mapToSql(ClientSearchResponse? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}
