import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_address_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_property_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_request.dart';
import 'package:solfy_flutter/models/api/bank/client_search/exchangeinv2.dart';

Map<String, dynamic> showMap = {};
Map<String, dynamic> showApi = {};

Map getMapAdress({
  required ClientScoreClientAddressRequest? adress,
  required int id,
}) {
  return {
    "type": {"id": id, "code": "$id"},
    "region": {
      "id": adress!.adminArea ?? 1,
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
    "type": {"id": item.typeVehicle ?? 1, "code": "${item.typeVehicle}"},
    "model": item.modelVehicle,
    "year_issue": item.yearIssue,
    "market_value": item.marketValueVehicle.toString(),
  };
}

Future<Map<String, dynamic>> clientScoreRequestV2(
    ClientScoreRequest data) async {
  await Future.delayed(Duration(milliseconds: 500));
  print('clientScoreRequestV2 clientIncome =${data.clientIncome!.toJson()}');
  print(
      'clientScoreRequestV2 clientIncome =${data.clientIncome!.addIncomeSource}');
  List<Map>? vehicles = [];
  if (data.clientVehicles != null) {
    data.clientVehicles!.forEach((element) {
      vehicles!.add(getVehicles(element));
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

  if (data.clientLivingAddress != null &&
      data.clientLivingAddress!.street != null) {
    address.add(getMapAdress(adress: data.clientLivingAddress, id: 2));
  }
  if (data.clientRegistrationAddress != null &&
      data.clientRegistrationAddress!.street != null) {
    address.add(getMapAdress(adress: data.clientRegistrationAddress, id: 1));
  }
  if (data.clientTemporaryAddress != null &&
      data.clientTemporaryAddress!.street != null) {
    address.add(getMapAdress(adress: data.clientTemporaryAddress, id: 3));
  }
  Map<String, dynamic> map = {
    "bpm_process_id": null,
    "stage": "INITIAL",
    "order_source": "SOLFY",
    "questionnaire_id": null, //
    "pinfl": (data.clientData!.pnfl != null && data.clientData!.pnfl != '')
        ? data.clientData!.pnfl
        : await LocalData().loadJson('pinfl'),
    "client_id": null,
    // (data.clientData!.clientId != null && data.clientData!.clientId != '')
    //     ? data.clientData!.clientId
    //     : await LocalData().loadJson('client_id'),
    "client_code": null,
    //  await LocalData().loadJson('client_code'),
    "client_uid": null,
    // await LocalData().loadJson('client_uid'),
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
      "activity_type": (data.clientJobInfo!.typeActivity == null)
          ? null
          : {
              "id": data.clientJobInfo!.typeActivity,
              "code": data.clientJobInfo!.typeActivity,
            },
      "employer_name": data.clientJobInfo!.employerName,
      "employer_tin": data.clientJobInfo!.employerId,
      "organization_type": (data.clientJobInfo!.typeFarm == null)
          ? null
          : {
              "id": data.clientJobInfo!.typeFarm,
              "code": "${data.clientJobInfo!.typeFarm}"
            },
      "employment_position_category":
          (data.clientJobInfo!.employmentPositionCategory == null)
              ? null
              : {
                  "id": data.clientJobInfo!.employmentPositionCategory,
                  "code": data.clientJobInfo!.employmentPositionCategory,
                },
      "employee_count": (data.clientJobInfo!.workerNumber == null)
          ? null
          : {
              "id": data.clientJobInfo!.workerNumber,
              "code": data.clientJobInfo!.workerNumber,
            },
      "last_work_experience": (data.clientJobInfo!.lastWorkExperience == null)
          ? null
          : {
              "id": data.clientJobInfo!.lastWorkExperience,
              "code": data.clientJobInfo!.lastWorkExperience,
            },
      "work_experience": (data.clientJobInfo!.workExperience == null)
          ? null
          : {
              "id": data.clientJobInfo!.workExperience,
              "code": data.clientJobInfo!.workExperience,
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
      "add_income_amount": (data.clientIncome!.addIncomeAmount == null)
          ? null
          : data.clientIncome!.addIncomeAmount.toString(),
      "add_income_source": (data.clientIncome!.addIncomeSource == null)
          ? null
          : {
              "id": data.clientIncome!.addIncomeSource,
              "code": "${data.clientIncome!.addIncomeSource}"
            }
    },
    "realties": (realties == null || realties.isEmpty) ? null : realties,
    "vehicles": (vehicles == null || vehicles.isEmpty) ? null : vehicles,
    "secret_word": data.secretWord,
  };
  printWrapped('console map >>>>>>>> $map');
  showMap = map;
  return map;
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}
