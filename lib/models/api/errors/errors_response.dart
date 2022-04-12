import 'package:solfy_flutter/models/api/errors/error_item_response.dart';

/// Респонс ошибки
class ErrorsResponse {
  List<ErrorItemResponse>? errors;

  ErrorsResponse({
    this.errors,
  });

  ErrorsResponse.fromJson(dynamic json) {
    if (json is List<dynamic>) {
      errors = [];
      json.forEach((item) {
        if (item != null) {
          errors?.add(ErrorItemResponse.fromJson(item));
        }
      });
    }
  }
}
