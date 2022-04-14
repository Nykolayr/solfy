import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

Map<String, dynamic> exchangev1inv2(Map<String, dynamic> json) {
  print('>>>>>>>>>>>>>>>>>>> last_name == ${json['last_name']} ');
  print('>>>>>>>>>>>>>>>>>>> birth_place == ${json['birth_place']} ');
  print('>>>>>>>>>>>>>>>>>>> filial == ${json['filial']} ');
  print('>>>>>>>>>>>>>>>>>>> first_name == ${json['first_name']} ');
  print('>>>>>>>>>>>>>>>>>>> document == ${json['document']} ');
  print('>>>>>>>>>>>>>>>>>>> email == ${json['email']} ');
  print(
      '>>>>>>>>>>>>>>>>>>> residence_country == ${json['residence_country']} ');
  print('>>>>>>>>>>>>>>>>>>> residency == ${json['residency']} ');
  print('>>>>>>>>>>>>>>>>>>> education == ${json['education']} ');
  print('>>>>>>>>>>>>>>>>>>> gender == ${json['gender']} ');
  Map<String, dynamic> clientData = {
    "last_name": json['last_name'],
    "country_birth": json['birth_place']['country'],
    "code_filial": json['filial']['code'],
    "first_name": json['first_name'],
    "doc_type": json['document']['type'],
    "email": json['email'],
    "doc_end_date": json['document']['end_date'],
    "pnfl": json['pinfl'],
    "inn": json['tin'],
    "client_id": json['client_id'],
    "residence_county": json['residence_country'],
    "mobile_phone1": json['verified_phone_number'],
    "doc_number": json['document']['number'],
    "location_birth": json['birth_place']['location'],
    "client_code": json['client_code'],
    "admin_area_document": null,
    "doc_series": json['document']['series'],
    "gender": json['gender'],
    "doc_issue_date": json['document']['issue_date'],
    "agency_document": {"id": 1, "code": json['document']['given_place']},
    "date_of_birth": json['date_of_birth'],
    "middle_name": json['middle_name'],
    "status": 'не знаю что такое status',
    "residency": json['residency'],
    "education": json['education'],
    "citizenship": int.parse(json['residency']['code']),
  };

  Map<String, dynamic>? clientLivingAddress;
  Map<String, dynamic>? clientRegistrationAddress;
  Map<String, dynamic>? clientTemporaryAddress;

  List address = json['addresses'];
  for (int k = 0; k < address.length; k++) {
    int id = address[k]['type']['id'];
    Map district = address[k]['district'];
    String apartment_number = address[k]['house_number'];
    String houseNumber = address[k]['apartment_number'];
    String locality = address[k]['location'];
    Map admin_area = address[k]['region'];

    String street = address[k]['street'];
    Map type_ownership = address[k]['realty_type'];
    // ignore: unused_local_variable
    String address_string = address[k]['address_string'];
    print('console address type   >>>> $id == ${address[k]['type']['code']}');

    switch (id) {
      case 1:
        clientLivingAddress = {
          "house_number": houseNumber,
          "district": district,
          "apartment_number": apartment_number,
          "locality": locality,
          "admin_area": admin_area,
          "street": street,
          "type_ownership": type_ownership,
        };
        break;
      case 2:
        clientRegistrationAddress = {
          "house_number": houseNumber,
          "district": district,
          "apartment_number": apartment_number,
          "locality": locality,
          "admin_area": admin_area,
          "street": street,
          "type_ownership": type_ownership,
        };
        break;
      case 3:
        clientTemporaryAddress = {
          "house_number": houseNumber,
          "district": district,
          "apartment_number": apartment_number,
          "locality": locality,
          "admin_area": admin_area,
          "street": street,
          "type_ownership": type_ownership,
        };
        break;
      default:
    }
  }

  Map<String, dynamic> income = json['income'];
  Map<String, dynamic> clientIncome = {
    "add_income_amount": int.parse(income['add_income_amount']),
    "loan_expenses": int.parse(income['loan_expenses']),
    "add_income_source": income['add_income_source'],
    "add_income": income['add_income'],
    "monthly_income": int.parse(income['monthly_income']),
    "monthly_expenses": int.parse(income['monthly_expenses']),
  };

  Map<String, dynamic> clientFamilyData = {
    "marital_status": json['marital_status'],
    "children": json['has_children'],
    "children_number": json['children_count'],
  };

  Map<String, dynamic> job = json['job'];

  Map<String, dynamic> clientJobInfo = {
    "employer_name": job['employer_name'],
    "employment_position_category": job['employment_position_category'],
    "work_experience": job['work_experience'],
    "worker_number": job['employee_count'],
    "type_activity": job['activity_type'],
    "last_work_experience": job['last_work_experience'],
    "type_organization": job['organization_type'],
    "employer_id": job['employer_tin'],
    "type_business": job['organization_type'],
    "type_farm": job['organization_type'],
  };

  List realties = json['realties'];
  List vehicles = json['vehicles'];
  List insurances = json['insurances'];
  List clientProperties = [];
  List clientVehicles = [];
  List clientInsurances = [];

  realties.forEach((element) {
    clientProperties.add({
      "market_value_realty": int.parse(element['market_value']),
      "region_property": element['region'],
      "type_property": element['type'],
    });
  });

  vehicles.forEach((element) {
    clientVehicles.add({
      "year_issue": element['year_issue'],
      "model_vehicle": element['model'],
      "market_value_vehicle": int.parse(element['market_value']),
      "type_vehicle": element['type'],
    });
  });
  insurances.forEach((element) {
    clientInsurances.add({
      "company": element['company'],
      "company_tin": element['company_tin'],
      "policy_amount": element['policy_amount'],
    });
  });

  String code_word = "secret_word";
  return {
    'clientData': clientData,
    'clientLivingAddress': clientLivingAddress,
    'clientRegistrationAddress': clientRegistrationAddress,
    'clientTemporaryAddress': clientTemporaryAddress,
    'clientIncome': clientIncome,
    'clientFamilyData': clientFamilyData,
    'clientJobInfo': clientJobInfo,
    'clientProperties': clientProperties,
    'clientVehicles': clientVehicles,
    'code_word': code_word,
  };
}

Map<String, dynamic> valueObject(dynamic id, dynamic code) {
  return {"id": id, "code": code};
}
