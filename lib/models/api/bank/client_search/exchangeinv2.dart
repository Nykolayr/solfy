import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

Map<String, dynamic> exchangev1inv2(Map<String, dynamic> json) {
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
    "agency_document": ValueObject(1, json['document']['given_place']),
    "date_of_birth": json['date_of_birth'],
    "middle_name": json['middle_name'],
    "status": 'не знаю что такое status',
    "residency": json['residency'],
    "education": json['education'],
    "citizenship": json['residency']['code'],
  };
  
  List<Map<String, dynamic>> address = json['addresses'];
  for (int k = 0; k < address.length;k++) {
if(address['type'])

  }
    Map<String, dynamic> clientLivingAddress = {
      "house_number": json['addresses'],
      "district": json['education'],
      "apartment_number": json['education'],
      "locality": json['education'],
      "admin_area": json['education'],
      "street": json['education'],
      "type_ownership": json['education'],
    };

  return clientData;
}
