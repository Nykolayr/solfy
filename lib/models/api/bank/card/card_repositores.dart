import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/services/api/wallet_api_client.dart';

class CardRepository {
  WalletApiClient apiClient;
  CardRepository({
    required this.apiClient,
  });

  Future<Object> sendCardLocal(
    String card_number,
    String expire_date,
  ) async {
    try {
      final response = await apiClient.sendCardLocal(card_number, expire_date);
      return response;
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  Future<Object> sendCardLocalConfirm(
    String card_uuid,
    String code,
    String local_card_phone_number,
  ) async {
    try {
      final response = await apiClient.sendCardLocalConfirm(
        card_uuid,
        code,
        local_card_phone_number,
      );
      return await response;
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  Future<Object> sendCardLocalResend(
    String card_uuid,
  ) async {
    try {
      final response = await apiClient.sendCardLocalResend(card_uuid);
      return response;
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  Future<Object> walletCardUpdate() async {
    try {
      final response = await apiClient.walletCardUpdate();
      return response;
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }
}

class CardUpdateResponse {
  String limit = '';
  String available_balance = '';
  CardUpdateResponse({required this.limit, required this.available_balance});
  factory CardUpdateResponse.fromJson(Map<String, dynamic> json) {
    return CardUpdateResponse(
      limit: json['wallet']['limit'] ?? '',
      available_balance: json['wallet']['available_balance'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'limit': limit,
        'available_balance': available_balance,
      };
}

class CardResponse {
  String card_uuid = '';
  String local_card_phone_number = '';
  CardResponse({
    required this.card_uuid,
    required this.local_card_phone_number,
  });
  factory CardResponse.fromJson(Map<String, dynamic> json) {
    return CardResponse(
      card_uuid: json['card_uuid'] ?? '',
      local_card_phone_number: json['local_card_phone_number'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'card_uuid': card_uuid,
        'local_card_phone_number': local_card_phone_number,
      };
}

class CardConfirmResponse {
  String insurance_token = '';
  String processing_external_id = '';
  String transaction_id = '';
  CardConfirmResponse({
    required this.insurance_token,
    required this.processing_external_id,
    required this.transaction_id,
  });
  factory CardConfirmResponse.fromJson(Map<String, dynamic> json) {
    return CardConfirmResponse(
      insurance_token: json['insurance_token'] ?? '',
      processing_external_id: json['processing_external_id'] ?? '',
      transaction_id: json['transaction_id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'insurance_token': insurance_token,
        'processing_external_id': processing_external_id,
        'transaction_id': transaction_id,
      };
}

class CardResendResponse {
  String card_uuid = '';
  String local_card_phone_number = '';
  CardResendResponse({
    required this.card_uuid,
    required this.local_card_phone_number,
  });
  factory CardResendResponse.fromJson(Map<String, dynamic> json) {
    return CardResendResponse(
      card_uuid: json['card_uuid'] ?? '',
      local_card_phone_number: json['local_card_phone_number'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'card_uuid': card_uuid,
        'local_card_phone_number': local_card_phone_number,
      };
}
