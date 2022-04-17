import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_address_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_property_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_request.dart';

Map getMapAdress({
  required ClientScoreClientAddressRequest? adress,
  required int id,
}) {
  print('object === $id == ${adress!.toJson()}');
  return {
    "type": {"id": id, "code": "$id"},
    "region": {
      "id": adress.adminArea ?? 1,
      "code": adress.adminArea.toString()
    },
    "district": {
      "id": adress.district ?? 1,
      "code": adress.district.toString()
    },
    "address_string":
        "${adress.locality}, ${adress.street}, ${adress.houseNumber}, ${adress.apartmentNumber}",
    "location": adress.locality ?? 'location',
    "street": adress.street ?? 'street',
    "house_number": adress.houseNumber ?? "house_number",
    "apartment_number": adress.apartmentNumber ?? "apartment_number",
    "realty_type": {"id": adress.typeOwnership ?? 1, "code": "OWN"}
  };
}

Map getRealties(ClientScoreClientPropertyItemRequest item) {
  return {
    "type": {
      "id": item.typeProperty ?? 1,
      "code": item.typeProperty.toString()
    },
    "region": {
      "id": item.regionProperty ?? 1,
      "code": item.regionProperty.toString(),
    },
    "market_value": item.marketValueRealty.toString(),
  };
}

Map getVehicles(ClientScoreClientPropertyItemRequest item) {
  return {
    "type": {"id": item.typeVehicle ?? 1, "code": "$item.typeVehicle"},
    "model": item.modelVehicle,
    "year_issue": item.yearIssue,
    "market_value": item.marketValueVehicle.toString(),
  };
}

Map<String, dynamic> clientScoreRequestV2(ClientScoreRequest data) {
  List<Map>? vehicles = [];
  if (data.clientVehicles != null) {
    data.clientVehicles!.forEach((element) {
      vehicles!.add(getRealties(element));
    });
  } else
    vehicles = null;
  List<Map>? realties = [];
  if (data.clientProperties != null) {
    data.clientProperties!.forEach((element) {
      realties!.add(getRealties(element));
    });
  } else {
    realties = null;
  }
  List<Map> address = [];
  print('clientLivingAddress = ${data.clientLivingAddress}');
  if (data.clientLivingAddress != null) {
    address.add(getMapAdress(adress: data.clientLivingAddress, id: 1));
  }
  if (data.clientRegistrationAddress != null) {
    address.add(getMapAdress(adress: data.clientRegistrationAddress, id: 2));
  }
  if (data.clientTemporaryAddress != null) {
    address.add(getMapAdress(adress: data.clientTemporaryAddress, id: 3));
  }
  Map<String, dynamic> map = {
    "bpm_process_id": null,
    "stage": "INITIAL",
    "order_source": "SOLFY",
    "questionnaire_id": null, //
    "pinfl": data.clientData!.pnfl,
    "client_id": data.clientData!.clientId,
    "client_code": data.clientData!.clientCode,
    "client_uid": data.clientData!.adminAreaDocument,
    "last_name": data.clientData!.lastName,
    "first_name": data.clientData!.firstName,
    "middle_name": data.clientData!.middleName,
    "gender": {
      "id": data.clientData!.gender,
      "code": "${data.clientData!.gender}"
    },
    "date_of_birth": data.clientData!.dateOfBirth,
    "tin": data.clientData!.inn,
    "marital_status": {
      "id": data.clientFamilyData!.maritalStatus,
      "code": "${data.clientFamilyData!.maritalStatus}"
    },
    "has_children": {
      "id": data.clientFamilyData!.children,
      "code": "${data.clientFamilyData!.children}"
    },
    "children_count": data.clientFamilyData!.childrenNumber,
    "relatives": null,
    "document": {
      "type": {
        "id": data.clientData!.docType,
        "code": "${data.clientData!.docType}"
      },
      "series": data.clientData!.docSeries,
      "number": data.clientData!.docNumber,
      "issue_date": data.clientData!.docIssueDate,
      "end_date": data.clientData!.docEndDate,
      "given_place": data.clientData!.agencyDocument,
    },
    "residency": {
      "id": data.clientData!.residency,
      "code": "${data.clientData!.residency}"
    },
    "residence_country": {
      "id": data.clientData!.residenceCountry,
      "code": "UZ"
    },
    "filial":
        null, //{"id": data.clientData!.codeFilial.toString(), "code": "00074"},
    "birth_place": {
      "country": {
        "id": data.clientData!.countryBirth,
        "code": "${data.clientData!.countryBirth}"
      },
      "location": data.clientData!.locationBirth,
    },
    "verified_phone_number": data.clientData!.mobilePhone,
    "email": data.clientData!.email,
    "education": {
      "id": data.clientData!.education,
      "code": "${data.clientData!.education}"
    },
    "addresses": address,
    "job": {
      "activity_type": {
        "id": data.clientJobInfo!.typeActivity,
        "code": "EMPLOYEE"
      },
      "employer_name": data.clientJobInfo!.employerName,
      "employer_tin": data.clientJobInfo!.employerId,
      "organization_type": {
        "id": data.clientJobInfo!.typeBusiness,
        "code": "RETAIL"
      },
      "employment_position_category": {
        "id": data.clientJobInfo!.employmentPositionCategory,
        "code": "SPECIALIST"
      },
      "employee_count": {
        "id": data.clientJobInfo!.workerNumber,
        "code": "MORE_1000"
      },
      "last_work_experience": {
        "id": data.clientJobInfo!.lastWorkExperience,
        "code": "MORE_10_YEAR"
      },
      "work_experience": {
        "id": data.clientJobInfo!.lastWorkExperience,
        "code": "MORE_10_YEAR"
      }
    },

    "income": {
      "monthly_income": data.clientIncome!.monthlyIncome.toString(),
      "monthly_expenses": data.clientIncome!.monthlyExpenses.toString(),
      "loan_expenses": data.clientIncome!.loanExpenses.toString(),
      "add_income": {
        "id": data.clientIncome!.addIncome,
        "code": "${data.clientIncome!.addIncome}"
      },
      "add_income_amount": data.clientIncome!.addIncomeAmount.toString(),
      "add_income_source": {
        "id": data.clientIncome!.addIncomeSource,
        "code": "${data.clientIncome!.addIncomeSource}"
      }
    },
    "realties": realties,
    "vehicles": vehicles,
    "secret_word": data.secretWord,
  };
  printWrapped('console map >>>>>>>> $map');
  return map;
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}
