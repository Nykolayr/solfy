import 'dart:convert';

import 'package:moor/moor.dart';

class SearchLastQueriesConverter extends TypeConverter<List<String>, String> {
  const SearchLastQueriesConverter();
  @override
  List<String>? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return (json.decode(fromDb) as List<dynamic>).cast<String>();
  }

  @override
  String? mapToSql(List<String>? value) {
    if (value == null) {
      return null;
    }
    return json.encode(value);
  }
}
