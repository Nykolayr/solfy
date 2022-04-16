import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_address_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_property_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_request.dart';

Map getMapAdress(
  ClientScoreClientAddressRequest? adress,
  int id,
) {
  return {
    "type": {"id": id, "code": "REGISTR"},
    "region": {"id": adress!.adminArea, "code": adress.adminArea.toString()},
    "district": {"id": adress.district, "code": adress.district.toString()},
    "address_string":
        "${adress.locality}, ${adress.street}, ${adress.houseNumber}, ${adress.apartmentNumber}",
    "location": adress.locality,
    "street": adress.street,
    "house_number": adress.houseNumber,
    "apartment_number": adress.apartmentNumber,
    "realty_type": {"id": adress.typeOwnership, "code": "OWN"}
  };
}

Map getRealties(ClientScoreClientPropertyItemRequest item) {
  return {
    "type": {"id": item.typeProperty, "code": item.typeProperty.toString()},
    "region": {
      "id": item.regionProperty,
      "code": item.regionProperty.toString(),
    },
    "market_value": item.marketValueRealty.toString(),
  };
}

Map getVehicles(ClientScoreClientPropertyItemRequest item) {
  return {
    "type": {"id": item.typeVehicle, "code": "CAR"},
    "model": item.modelVehicle,
    "year_issue": item.yearIssue,
    "market_value": item.marketValueVehicle.toString(),
  };
}

Map<String, dynamic> clientScoreRequestV2(ClientScoreRequest data) {
  List<Map> vehicles = [];
  data.clientVehicles!.forEach((element) {
    vehicles.add(getRealties(element));
  });
  List<Map> realties = [];
  data.clientProperties!.forEach((element) {
    realties.add(getRealties(element));
  });
  List<Map> address = [];
  if (data.clientLivingAddress != null) {
    address.add(getMapAdress(data.clientLivingAddress, 1));
  }
  if (data.clientRegistrationAddress != null) {
    address.add(getMapAdress(data.clientRegistrationAddress, 2));
  }
  if (data.clientTemporaryAddress != null) {
    address.add(getMapAdress(data.clientTemporaryAddress, 3));
  }
  Map<String, dynamic> map = {
    "bpm_process_id": null,
    "stage": "INITIAL",
    "order_source": "SOLFY",
    "questionnaire_id": "", //
    "client_code": "12345678908965", //
    "pinfl": data.clientData!.pnfl,
    "client_id": data.clientData!.clientId,
    "client_uid": data.clientData!.clientId,
    "last_name": data.clientData!.lastName,
    "first_name": data.clientData!.firstName,
    "middle_name": data.clientData!.middleName,
    "gender": {"id": data.clientData!.gender, "code": "MALE"},
    "date_of_birth": data.clientData!.dateOfBirth, // переделать
    "tin": data.clientData!.inn,
    "marital_status": {
      "id": data.clientFamilyData!.maritalStatus,
      "code": "MARRIED"
    },
    "has_children": {"id": data.clientFamilyData!.children, "code": "0"},
    "children_count": data.clientFamilyData!.childrenNumber,
    "relatives": null,
    "document": {
      "type": {"id": data.clientData!.docType, "code": "BIO"},
      "series": data.clientData!.docSeries,
      "number": data.clientData!.docNumber,
      "issue_date": data.clientData!.docIssueDate,
      "end_date": data.clientData!.docEndDate,
      "given_place": data.clientData!.agencyDocument, //
    },
    "residency": {"id": data.clientData!.residency, "code": "1"},
    "residence_country": {
      "id": data.clientData!.residenceCountry,
      "code": "UZ"
    },
    "filial":
        null, //{"id": data.clientData!.codeFilial.toString(), "code": "00074"},
    "birth_place": {
      "country": {"id": data.clientData!.countryBirth, "code": "UZ"},
      "location": data.clientData!.locationBirth,
    },
    "verified_phone_number": data.clientData!.mobilePhone,
    "email": data.clientData!.email,
    "education": {"id": data.clientData!.education, "code": "HIGH"},
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
      "add_income": {"id": data.clientIncome!.addIncome, "code": "1"},
      "add_income_amount": data.clientIncome!.addIncomeAmount.toString(),
      "add_income_source": {
        "id": data.clientIncome!.addIncomeSource,
        "code": "LEASE"
      }
    },
    "realties": realties,
    "vehicles": vehicles,
    "secret_word": data.secretWord,
    "client_id": data.client,
    "client_uid": data.secretWord,
    "client_code": data.secretWord,
  };
  printWrapped('console map >>>>>>>> $map');
  return map;
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}
