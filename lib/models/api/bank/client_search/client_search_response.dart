import 'dart:convert';

import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

//// @freezed
//// ignore_for_file: invalid_annotation_target

class ClientDocument {
  ValueObject type = ValueObject(6, 'BIO');
  String series = '';
  String number = '';
  String issue_date = '';
  String end_date = '';
  String given_place = '';
  ClientDocument({
    required this.type,
    required this.series,
    required this.number,
    required this.issue_date,
    required this.end_date,
    required this.given_place,
  });
  factory ClientDocument.fromJson(Map<String, dynamic> json) => ClientDocument(
        type: ValueObject(6, 'BIO'),
        series: json["series"] ?? '',
        number: json["number"] ?? '',
        issue_date: json["issue_date"] ?? '',
        end_date: json["end_date"] ?? '',
        given_place: json["given_place"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "series": series,
        "number": number,
        "issue_date": issue_date,
        "end_date": end_date,
        "given_place": given_place,
      };
}

class BirthPlace {
  ValueObject country = ValueObject(8, 'UZ');
  String location = '';
  BirthPlace({required this.country, required this.location});
  factory BirthPlace.fromJson(Map<String, dynamic> json) => BirthPlace(
        country: ValueObject(json["country"]["id"], json["country"]["code"]),
        location: json["location"] ?? '',
      );
  Map<String, dynamic> toJson() => {
        "country": country,
        "location": location,
      };
}

class Addresses {
  ValueObject type = ValueObject(1, 'REGISTR');
  ValueObject region = ValueObject(6, '6');
  ValueObject district = ValueObject(84, '84');
  ValueObject realty_type = ValueObject(1, 'OWN');
  String address_string = '';
  String location = '';
  String street = '';
  String house_number = '';
  String apartment_number = '';
  Addresses({
    required this.address_string,
    required this.apartment_number,
    required this.district,
    required this.house_number,
    required this.location,
    required this.realty_type,
    required this.region,
    required this.street,
    required this.type,
  });
  factory Addresses.fromJson(Map<String, dynamic> json) => Addresses(
        type: ValueObject(json["type"]["id"], json["type"]["code"]),
        region: ValueObject(json["region"]["id"], json["region"]["code"]),
        district: ValueObject(json["district"]["id"], json["district"]["code"]),
        realty_type:
            ValueObject(json["realty_type"]["id"], json["realty_type"]["code"]),
        address_string: json["address_string"] ?? '',
        location: json["location"] ?? '',
        street: json["street"] ?? '',
        house_number: json["house_number"] ?? '',
        apartment_number: json["apartment_number"] ?? '',
      );
  Map<String, dynamic> toJson() => {
        "type": type,
        "region": region,
        "district": district,
        "realty_type": realty_type,
        "address_string": address_string,
        "location": location,
        "street": street,
        "house_number": house_number,
        "apartment_number": apartment_number,
      };
}

class Job {
  ValueObject activity_type = ValueObject(1, 'EMPLOYEE');
  String employer_name = '';
  String employer_tin = '';
  ValueObject organization_type = ValueObject(5, 'RETAIL');
  ValueObject employment_position_category = ValueObject(6, 'SPECIALIST');
  ValueObject employee_count = ValueObject(5, 'MORE_1000');
  ValueObject last_work_experience = ValueObject(5, 'MORE_10_YEAR');
  ValueObject work_experience = ValueObject(5, 'MORE_10_YEAR');
  Job({
    required this.activity_type,
    required this.employee_count,
    required this.employer_name,
    required this.employer_tin,
    required this.employment_position_category,
    required this.last_work_experience,
    required this.organization_type,
    required this.work_experience,
  });
  factory Job.fromJson(Map<String, dynamic> json) => Job(
        activity_type: ValueObject(
            json["activity_type"]["id"], json["activity_type"]["code"]),
        employer_name: json["employer_name"] ?? '',
        employer_tin: json["employer_tin"] ?? '',
        organization_type: ValueObject(
            json["organization_type"]["id"], json["organization_type"]["code"]),
        employment_position_category: ValueObject(
            json["employment_position_category"]["id"],
            json["employment_position_category"]["code"]),
        employee_count: ValueObject(
            json["employee_count"]["id"], json["employee_count"]["code"]),
        last_work_experience: ValueObject(json["last_work_experience"]["id"],
            json["last_work_experience"]["code"]),
        work_experience: ValueObject(
            json["work_experience"]["id"], json["work_experience"]["code"]),
      );
  Map<String, dynamic> toJson() => {
        "activity_type": activity_type,
        "employer_name": employer_name,
        "employer_tin": employer_tin,
        "organization_type": organization_type,
        "employment_position_category": employment_position_category,
        "employee_count": employee_count,
        "last_work_experience": last_work_experience,
        "work_experience": work_experience,
      };
}

class Income {
  String monthly_income = '';
  String monthly_expenses = '';
  String loan_expenses = '';
  ValueObject add_income = ValueObject(1, '1');
  String add_income_amount = '';
  ValueObject add_income_source = ValueObject(11, 'LEASE');
  Income({
    required this.add_income,
    required this.add_income_amount,
    required this.add_income_source,
    required this.loan_expenses,
    required this.monthly_expenses,
    required this.monthly_income,
  });
  factory Income.fromJson(Map<String, dynamic> json) => Income(
        monthly_income: json["monthly_income"] ?? '',
        monthly_expenses: json["monthly_expenses"] ?? '',
        loan_expenses: json["loan_expenses"] ?? '',
        add_income:
            ValueObject(json["add_income"]["id"], json["add_income"]["code"]),
        add_income_amount: json["add_income_amount"] ?? '',
        add_income_source: ValueObject(
            json["add_income_source"]["id"], json["add_income_source"]["code"]),
      );
  Map<String, dynamic> toJson() => {
        "monthly_income": monthly_income,
        "monthly_expenses": monthly_expenses,
        "loan_expenses": loan_expenses,
        "add_income": add_income,
        "add_income_amount": add_income_amount,
        "add_income_source": add_income_source,
      };
}

class Realties {
  ValueObject type = ValueObject(1, 'OWN');
  ValueObject region = ValueObject(6, '6');
  String market_value = '';
  Realties({
    required this.market_value,
    required this.region,
    required this.type,
  });
  factory Realties.fromJson(Map<String, dynamic> json) => Realties(
        type: ValueObject(json["type"]["id"], json["type"]["code"]),
        region: ValueObject(json["region"]["id"], json["region"]["code"]),
        market_value: json["market_value"] ?? '',
      );
  Map<String, dynamic> toJson() => {
        "type": type,
        "region": region,
        "market_value": market_value,
      };
}

class Vehicles {
  ValueObject type = ValueObject(11, 'CAR');
  String model = '';
  String year_issue = '';
  String market_value = '';
  Vehicles({
    required this.market_value,
    required this.model,
    required this.type,
    required this.year_issue,
  });
  factory Vehicles.fromJson(Map<String, dynamic> json) => Vehicles(
        type: ValueObject(json["type"]["id"], json["type"]["code"]),
        market_value: json["market_value"] ?? '',
        model: json["model"] ?? '',
        year_issue: json["year_issue"] ?? '',
      );
  Map<String, dynamic> toJson() => {
        "type": type,
        "market_value": market_value,
        "model": model,
        "year_issue": year_issue,
      };
}

class Insurances {
  ValueObject company = ValueObject(1, 'OWN');
  String company_tin = '';
  String policy_amount = '';
  Insurances({
    required this.company,
    required this.company_tin,
    required this.policy_amount,
  });
  factory Insurances.fromJson(Map<String, dynamic> json) => Insurances(
        company: ValueObject(json["company"]["id"], json["company"]["code"]),
        company_tin: json["company_tin"] ?? '',
        policy_amount: json["policy_amount"] ?? '',
      );
  Map<String, dynamic> toJson() => {
        "company": company,
        "company_tin": company_tin,
        "policy_amount": policy_amount,
      };
}

class ClientSearchResponse {
  List<Addresses> addresses = [];
  BirthPlace? birthPlace;
  int children_count = 0;
  String client_id = '';
  String client_uid = '';
  String date_of_birth = '';
  ClientDocument? document;
  ValueObject? education = ValueObject(3, 'HIGH');
  String email = '';
  ValueObject? filial = ValueObject("00074", 'UZ');
  String first_name = '';
  ValueObject? gender = ValueObject(1, 'MALE');
  ValueObject? has_children = ValueObject(0, '0');
  Income? income;
  List<Insurances> insurances = [];
  Job? job;
  String last_name = '';
  ValueObject? marital_status = ValueObject(2, 'MARRIED');
  String middle_name = '';
  String pinfl = '';
  String questionnaire_id = '';
  List<Realties> realties = [];
  ValueObject? residence_country = ValueObject(860, 'UZ');
  ValueObject? residency = ValueObject(1, '1');
  String secret_word = '';
  String tin = '';
  List<Vehicles> vehicles = [];
  String verified_phone_number = '';

  ClientSearchResponse({
    required this.addresses,
    this.birthPlace,
    required this.children_count,
    required this.client_id,
    required this.client_uid,
    required this.date_of_birth,
    this.document,
    this.education,
    required this.email,
    this.filial,
    required this.first_name,
    this.gender,
    this.has_children,
    this.income,
    required this.insurances,
    this.job,
    required this.last_name,
    this.marital_status,
    required this.middle_name,
    required this.pinfl,
    required this.questionnaire_id,
    required this.realties,
    this.residence_country,
    this.residency,
    required this.secret_word,
    required this.tin,
    required this.vehicles,
    required this.verified_phone_number,
  });

  ClientSearchResponse copyWith({
    List<Addresses>? addresses,
    BirthPlace? birthPlace,
    int? children_count,
    String? client_id,
    String? client_uid,
    String? date_of_birth,
    ClientDocument? document,
    ValueObject? education,
    String? email,
    ValueObject? filial,
    String? first_name,
    ValueObject? gender,
    ValueObject? has_children,
    Income? income,
    List<Insurances>? insurances,
    Job? job,
    String? last_name,
    ValueObject? marital_status,
    String? middle_name,
    String? pinfl,
    String? questionnaire_id,
    List<Realties>? realties,
    ValueObject? residence_country,
    ValueObject? residency,
    String? secret_word,
    String? tin,
    String? verified_phone_number,
    List<Vehicles>? vehicles,
  }) {
    return ClientSearchResponse(
      education: education ?? this.education,
      marital_status: marital_status ?? this.marital_status,
      questionnaire_id: questionnaire_id ?? this.questionnaire_id,
      pinfl: pinfl ?? this.pinfl,
      client_id: client_id ?? this.client_id,
      client_uid: client_uid ?? this.client_uid,
      last_name: last_name ?? this.last_name,
      first_name: first_name ?? this.first_name,
      middle_name: middle_name ?? this.middle_name,
      date_of_birth: date_of_birth ?? this.date_of_birth,
      tin: tin ?? this.tin,
      residence_country: residence_country ?? this.residence_country,
      children_count: children_count ?? this.children_count,
      document: document ?? this.document,
      has_children: has_children ?? this.has_children,
      birthPlace: birthPlace ?? this.birthPlace,
      verified_phone_number:
          verified_phone_number ?? this.verified_phone_number,
      email: email ?? this.email,
      addresses: addresses ?? this.addresses,
      job: job ?? this.job,
      filial: filial ?? this.filial,
      income: income ?? this.income,
      realties: realties ?? this.realties,
      vehicles: vehicles ?? this.vehicles,
      residency: residency ?? this.residency,
      insurances: insurances ?? this.insurances,
      secret_word: secret_word ?? this.secret_word,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'addresses': addresses.map((x) => x.toJson()).toList(),
      'birthPlace': birthPlace?.toJson(),
      'children_count': children_count,
      'client_id': client_id,
      'client_uid': client_uid,
      'date_of_birth': date_of_birth,
      'document': document?.toJson(),
      'education': education,
      'email': email,
      'filial': filial,
      'first_name': first_name,
      'gender': gender,
      'has_children': has_children,
      'income': income?.toJson(),
      'insurances': insurances.map((x) => x.toJson()).toList(),
      'job': job?.toJson(),
      'last_name': last_name,
      'marital_status': marital_status,
      'middle_name': middle_name,
      'pinfl': pinfl,
      'questionnaire_id': questionnaire_id,
      'realties': realties.map((x) => x.toJson()).toList(),
      'residence_country': residence_country,
      'residency': residency,
      'secret_word': secret_word,
      'tin': tin,
      'verified_phone_number': verified_phone_number,
      'vehicles': vehicles.map((x) => x.toJson()).toList(),
    };
  }

  factory ClientSearchResponse.fromJson(Map<String, dynamic> map) {
    return ClientSearchResponse(
      addresses: List<Addresses>.from(
          map['addresses']?.map((x) => Addresses.fromJson(x))),
      birthPlace: map['birthPlace'] != null
          ? BirthPlace.fromJson(map['birthPlace'])
          : null,
      children_count: map['children_count']?.toInt() ?? 0,
      client_id: map['client_id'] ?? '',
      client_uid: map['client_uid'] ?? '',
      date_of_birth: map['date_of_birth'] ?? '',
      document: map['document'] != null
          ? ClientDocument.fromJson(map['document'])
          : null,
      education: map['education'] ?? '',
      email: map['email'] ?? '',
      filial: map['filial'] ?? '',
      first_name: map['first_name'] ?? '',
      gender: map['gender'] ?? '',
      has_children: map['has_children'] ?? '',
      income: map['income'] != null ? Income.fromJson(map['income']) : null,
      insurances: List<Insurances>.from(
          map['insurances']?.map((x) => Insurances.fromJson(x))),
      job: map['job'] != null ? Job.fromJson(map['job']) : null,
      last_name: map['last_name'] ?? '',
      marital_status: map['marital_status'] ?? '',
      middle_name: map['middle_name'] ?? '',
      pinfl: map['pinfl'] ?? '',
      questionnaire_id: map['questionnaire_id'] ?? '',
      realties: List<Realties>.from(
          map['realties']?.map((x) => Realties.fromJson(x))),
      residence_country: map['residence_country'] ?? '',
      residency: map['residency'] ?? '',
      secret_word: map['secret_word'] ?? '',
      tin: map['tin'] ?? '',
      verified_phone_number: map['verified_phone_number'] ?? '',
      vehicles: List<Vehicles>.from(
          map['vehicles']?.map((x) => Vehicles.fromJson(x))),
    );
  }
}


// class ClientSearchResponse with _$ClientSearchResponse {
//   const factory ClientSearchResponse({
//     @JsonKey(name: "clientData") ClientSearchClientDataResponse? clientData,
//     @JsonKey(name: "clientLivingAddress")
//         ClientSearchClientAddressResponse? clientLivingAddress,
//     @JsonKey(name: "clientRegistrationAddress")
//         ClientSearchClientAddressResponse? clientRegistrationAddress,
//     @JsonKey(name: "clientTemporaryAddress")
//         ClientSearchClientAddressResponse? clientTemporaryAddress,
//     @JsonKey(name: "clientIncome")
//         ClientSearchClientIncomeResponse? clientIncome,
//     @JsonKey(name: "clientFamilyData")
//         ClientSearchClientFamilyDataResponse? clientFamilyData,
//     @JsonKey(name: "clientJobInfo")
//         ClientSearchClientJobInfoResponse? clientJobInfo,
//     @JsonKey(name: "clientProperties")
//         List<ClientSearchClientPropertiesItemResponse>? clientProperties,
//     @JsonKey(name: "clientVehicles")
//         List<ClientSearchClientPropertiesItemResponse>? clientVehicles,
//     @JsonKey(name: "code_word") String? codeWord,
//   }) = ClientSearchResp;

//   factory ClientSearchResponse.fromJson(Map<String, dynamic> json) =>
//       _$ClientSearchResponseFromJson(json);
// }

