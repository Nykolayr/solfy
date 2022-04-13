import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

part 'client_search_client_address_response.freezed.dart';
part 'client_search_client_address_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ClientSearchClientAddressResponse with _$ClientSearchClientAddressResponse {
  const factory ClientSearchClientAddressResponse(
    @JsonKey(name: "house_number") String? houseNumber,
    @JsonKey(name: "district") ValueObject? district,
    @JsonKey(name: "apartment_number") String? apartmentNumber,
    @JsonKey(name: "locality") String? locality,
    @JsonKey(name: "admin_area") ValueObject? adminArea,
    @JsonKey(name: "street") String? street,
    @JsonKey(name: "type_ownership") ValueObject? typeOwnership,
  ) = ClientAddress;

  factory ClientSearchClientAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientSearchClientAddressResponseFromJson(json);
}

{
  "questionnaire_id": "",

  "marital_status": {
    "id": 2,
    "code": "MARRIED"
  },
  "has_children": {
    "id": 0,
    "code": "0"
  },
  "children_count": 0,

  "addresses": [
    {
      "type": {
        "id": 1,
        "code": "REGISTR"
      },
      "region": {
        "id": 6,
        "code": "6"
      },
      "district": {
        "id": 84,
        "code": "84"
      },
      "address_string": "ЎЗГАРИШ КФЙ, БЕЛАРИК МФЙ, ЁШЛИК КЎЧАСИ,  uy:8",
      "location": "Кибрай",
      "street": "ул. Ленина",
      "house_number": "56А",
      "apartment_number": "15",
      "realty_type": {
        "id": 1,
        "code": "OWN"
      }
    }
  ],
  "job": {
    "activity_type": {
      "id": 1,
      "code": "EMPLOYEE"
    },
    "employer_name": "ООО Адидас",
    "employer_tin": "123432123",
    "organization_type": {
      "id": 5,
      "code": "RETAIL"
    },
    "employment_position_category": {
      "id": 6,
      "code": "SPECIALIST"
    },
    "employee_count": {
      "id": 5,
      "code": "MORE_1000"
    },
    "last_work_experience": {
      "id": 5,
      "code": "MORE_10_YEAR"
    },
    "work_experience": {
      "id": 5,
      "code": "MORE_10_YEAR"
    }
  },
  "income": {
    "monthly_income": "5000000",
    "monthly_expenses": "1000000",
    "loan_expenses": "200000",
    "add_income": {
      "id": 1,
      "code": "1"
    },
    "add_income_amount": "200000",
    "add_income_source": {
      "id": 11,
      "code": "LEASE"
    }
  },
  "realties": [
    {
      "type": {
        "id": 1,
        "code": "OWN"
      },
      "region": {
        "id": 6,
        "code": "6"
      },
      "market_value": "5000000"
    }
  ],
  "vehicles": [
    {
      "type": {
        "id": 11,
        "code": "CAR"
      },
      "model": "volvo",
      "year_issue": 2007,
      "market_value": "50000000"
    }
  ],
  "insurances": [
    {
      "company": {
        "id": 6,
        "code": ""
      },
      "company_tin": "345675234",
      "policy_amount": "2000000"
    }
  ],
  "secret_word": ""
}