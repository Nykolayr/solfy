import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_address_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_data_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_family_data_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_income_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_job_info_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_property_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_request.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_properties_item_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_request.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_dictionary_item_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_district_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_region_response.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/models/form_property_model.dart';
import 'package:solfy_flutter/models/form_vehicle_model.dart';
import 'package:solfy_flutter/repository/bank_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/services/database/client_search_db_service.dart';

part 'questionnaire_state.dart';
part 'questionnaire_event.dart';
part 'questionnaire_bloc.freezed.dart';

/// Блок с логикой анкеты
class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  final BankRepository _bankRepository;
  final ProfileRepository _profileRepository;
  final StaticRepository _staticRepository;
  final ClientSearchDbService _dbService;

  QuestionnaireBloc(this._bankRepository, this._dbService,
      this._staticRepository, this._profileRepository)
      : super(Initial()) {
    on<Reset>(
      (event, emit) async {
        emit(const Initial());
      },
    );
    on<ClientSearch>(
      (event, emit) async {
        await clientSearch(emit, event);
      },
    );
    on<SavePersonalData>(
      (event, emit) async {
        await savePersonalData(emit, event);
      },
    );
    on<SaveAddressData>(
      (event, emit) async {
        await saveAddressData(emit, event);
      },
    );
    on<SaveJobData>(
      (event, emit) async {
        await saveJobData(emit, event);
      },
    );
    on<SavePropertiesData>(
      (event, emit) async {
        await savePropertiesData(emit, event);
      },
    );
    on<ClientScore>(
      (event, emit) async {
        await clientScore(emit, event);
      },
    );
  }

  /// Поиск анкеты клиента
  Future<void> clientSearch(
      Emitter<QuestionnaireState> emit, ClientSearch event) async {
    final dbResponse = await _dbService.getClientSearchResponse();
    print('console >>>>>>>>>> dbResponse == ${dbResponse}');
    if (dbResponse != null) {
      emit(QuestionnaireFoundSuccess(
        dbResponse.clientSearchResponse,
        dbResponse.questionnaire,
        dbResponse.currentStage,
      ));
    } else {
      var res = await _profileRepository.getProfile();
      if (res.isRight) {
        print('console phone == ${res.right.profile!.phone}');
      }
      if (event.number != null && res.isRight) {
        String? phone = res.right.profile!.phone!
            .replaceAll(" ", "")
            .replaceAll("+", "")
            .replaceAll("-", "");
        final request = ClientSearchRequest(
          phone,
          {"id": 8, "code": "BIO"},
          event.series!,
          event.number!,
          event.pinFl!,
          true,
        );
        final response = await _bankRepository.clientSearch(request);
        if (response.isRight) {
          final clientData = response.right.clientData?.copyWith(
            docIssueDate:
                formatFormDate(response.right.clientData?.docIssueDate),
            docEndDate: formatFormDate(response.right.clientData?.docEndDate),
          );
          await _dbService.saveClientSearchResponse(
              response.right.copyWith(clientData: clientData));
          final dbResponse = await _dbService.getClientSearchResponse();
          if (dbResponse != null) {
            emit(QuestionnaireFoundSuccess(
              dbResponse.clientSearchResponse,
              dbResponse.questionnaire,
              dbResponse.currentStage,
            ));
          }
        } else {
          print("console errors ==${response.left.errors}");
          emit(QuestionnaireFoundError(response.left));
        }
      }
    }
  }

  /// Сохранение в локальную бд данных из страницы "Персональные данные"
  Future<void> savePersonalData(
      Emitter<QuestionnaireState> emit, SavePersonalData event) async {
    final newQuestionnaire = event.questionnaire.copyWith(
      last_name: event.data["last_name"],
      first_name: event.data["first_name"],
      middle_name: event.data["middle_name"],
      date_of_birth: event.data["date_of_birth"],
      tin: event.data["inn"],
      gender: ValueObject(
        _staticRepository.dictionaries.gender?.dictionaryItems
            ?.firstWhere((element) => element.value == event.data["gender"])
            .id,
        event.data["gender"],
      ),
      document: ClientDocument(
        type: ValueObject(
          _staticRepository.dictionaries.docType?.dictionaryItems
              ?.firstWhere((element) => element.value == event.data["doc_type"])
              .id,
          event.data["doc_type"],
        ),
        series: event.data["doc_series"],
        number: event.data["doc_number"],
        issue_date: event.data["doc_issue_date"],
        end_date: event.data["doc_end_date"],
        // adminAreaDocument: ValueObject(
        //   _staticRepository.geo.regions
        //       ?.firstWhere((element) =>
        //           element.name == event.data["admin_area_document"])
        //       .id,
        //   event.data["admin_area_document"],
        // ),
        given_place: event.data["agency_document"],
      ),
      residency: ValueObject(
        _staticRepository.dictionaries.residency?.dictionaryItems
            ?.firstWhere(
                (element) => element.value == event.data["citizenship"])
            .id,
        event.data["citizenship"],
      ),
      birthPlace: BirthPlace(
        country: ValueObject(
          _staticRepository.geo.countryItems
              ?.firstWhere((element) =>
                  element.countries?.any((element) =>
                      element.name == event.data["country_birth"]) ??
                  false)
              .countries
              ?.firstWhere(
                  (element) => element.name == event.data["country_birth"])
              .id,
          event.data["country_birth"],
        ),
        location: event.data["location_birth"],
      ),
      verified_phone_number: event.data["mobile_phone1"] != null
          ? (event.data["mobile_phone1"] as String)
              .replaceAll(" ", "")
              .replaceAll("+", "")
              .replaceAll("-", "")
          : null,
      email: event.data["email"],
      education: ValueObject(
        _staticRepository.dictionaries.education?.dictionaryItems
            ?.firstWhere((element) => element.value == event.data["education"])
            .id,
        event.data["education"],
      ),
      marital_status: ValueObject(
        _staticRepository.dictionaries.maritalStatus?.dictionaryItems
            ?.firstWhere(
                (element) => element.value == event.data["marital_status"])
            .id,
        event.data["marital_status"],
      ),
      children_count: event.data["children_number"] != null
          ? int.tryParse(event.data["children_number"])
          : 0,
      secret_word: event.data["code_word"],
    );
    await _dbService.updateQuestionnaire(newQuestionnaire);
    await _dbService.updateCurrentStage(2);
    final newData = await _dbService.getClientSearchResponse();
    if (newData != null) {
      emit(QuestionnaireFoundSuccess(newData.clientSearchResponse,
          newData.questionnaire, newData.currentStage));
    }
  }

  /// Сохранение в локальную бд данных из страницы "Адрес"
  Future<void> saveAddressData(
      Emitter<QuestionnaireState> emit, SaveAddressData event) async {
    print('event.data == ${event.data}');
    List<Addresses> tempAddress = event.questionnaire.addresses;
    tempAddress.add(
      Addresses(
        address_string: '',
        type: ValueObject(1, 'REGISTR'),
        region: ValueObject(
          _staticRepository.geo.regions
              ?.firstWhere((element) => element.name == event.data["region"])
              .id,
          event.data["region"],
        ),
        district: ValueObject(
          _staticRepository.geo.districts
              ?.firstWhere((element) => element.name == event.data["district"])
              .id,
          event.data["district"],
        ),
        location: event.data["city"],
        street: event.data["street"],
        house_number: event.data["house"],
        apartment_number: event.data["apartment"],
        realty_type: ValueObject(
          _staticRepository.dictionaries.typeOwnership?.dictionaryItems
              ?.firstWhere((element) => element.value == event.data["type"])
              .id,
          event.data["type"],
        ),
      ),
    );

    if (event.data["temp_region"] != null) {
      tempAddress.add(
        Addresses(
          address_string: '',
          type: ValueObject(1, 'REGISTR'),
          region: ValueObject(
            _staticRepository.geo.regions
                ?.firstWhere(
                    (element) => element.name == event.data["temp_region"],
                    orElse: () => GeoRegionResponse())
                .id,
            event.data["temp_region"],
          ),
          district: ValueObject(
            _staticRepository.geo.districts
                ?.firstWhere(
                    (element) => element.name == event.data["temp_district"],
                    orElse: () => GeoDistrictResponse())
                .id,
            event.data["temp_district"],
          ),
          location: event.data["temp_city"],
          street: event.data["temp_street"],
          house_number: event.data["temp_house"],
          apartment_number: event.data["temp_apartment"],
          realty_type: ValueObject(
            _staticRepository.dictionaries.typeOwnership?.dictionaryItems
                ?.firstWhere(
                    (element) => element.value == event.data["temp_type"],
                    orElse: () => DictionariesDictionaryItemResponse())
                .id,
            event.data["temp_type"],
          ),
        ),
      );
    }
    if (event.data["fact_region"] != null) {
      tempAddress.add(
        Addresses(
          address_string: '',
          type: ValueObject(1, 'REGISTR'),
          region: ValueObject(
            _staticRepository.geo.regions
                ?.firstWhere(
                    (element) => element.name == event.data["fact_region"],
                    orElse: () => GeoRegionResponse())
                .id,
            event.data["fact_region"],
          ),
          district: ValueObject(
            _staticRepository.geo.districts
                ?.firstWhere(
                    (element) => element.name == event.data["fact_district"],
                    orElse: () => GeoDistrictResponse())
                .id,
            event.data["fact_district"],
          ),
          location: event.data["fact_city"],
          street: event.data["fact_street"],
          house_number: event.data["fact_house"],
          apartment_number: event.data["fact_apartment"],
          realty_type: ValueObject(
            _staticRepository.dictionaries.typeOwnership?.dictionaryItems
                ?.firstWhere(
                    (element) => element.value == event.data["fact_type"],
                    orElse: () => DictionariesDictionaryItemResponse())
                .id,
            event.data["fact_type"],
          ),
        ),
      );
    }
    ClientSearchResponse newQuestionnaire = event.questionnaire.copyWith(
      addresses: tempAddress,
    );
    await _dbService.updateQuestionnaire(newQuestionnaire);
    await _dbService.updateCurrentStage(3);
    final newData = await _dbService.getClientSearchResponse();
    if (newData != null) {
      emit(QuestionnaireFoundSuccess(
        newData.clientSearchResponse,
        newData.questionnaire,
        newData.currentStage,
      ));
    }
  }

  /// Сохранение в локальную бд данных из страницы "Работа и доходы"
  Future<void> saveJobData(
      Emitter<QuestionnaireState> emit, SaveJobData event) async {
    print('event.data == ${event.data}');
    final newQuestionnaire = event.questionnaire.copyWith(
        job: Job(
          activity_type: ValueObject(
            _staticRepository.dictionaries.typeActivity?.dictionaryItems
                ?.firstWhere(
                    (element) => element.value == event.data["activity_type"],
                    orElse: () => DictionariesDictionaryItemResponse())
                .id,
            event.data["activity_type"],
          ),
          employer_name: event.data["employer_name"],
          employer_tin: event.data["employer_inn"],
          organization_type: ValueObject(
            _staticRepository.dictionaries.typeFarm?.dictionaryItems
                ?.firstWhere(
                    (element) => element.value == event.data["farm_type"],
                    orElse: () => DictionariesDictionaryItemResponse())
                .id,
            event.data["farm_type"],
          ),
          employment_position_category: ValueObject(
            _staticRepository
                .dictionaries.employmentPositionCategory?.dictionaryItems
                ?.firstWhere(
                    (element) => element.value == event.data["category"],
                    orElse: () => DictionariesDictionaryItemResponse())
                .id,
            event.data["category"],
          ),
          employee_count: ValueObject(
            _staticRepository.dictionaries.workerNumber?.dictionaryItems
                ?.firstWhere(
                    (element) => element.value == event.data["worker_number"],
                    orElse: () => DictionariesDictionaryItemResponse())
                .id,
            event.data["worker_number"],
          ),
          last_work_experience: ValueObject(
            _staticRepository.dictionaries.lastWorkExperience?.dictionaryItems
                ?.firstWhere(
                    (element) =>
                        element.value == event.data["last_work_experience"],
                    orElse: () => DictionariesDictionaryItemResponse())
                .id,
            event.data["last_work_experience"],
          ),
          work_experience: ValueObject(
            _staticRepository.dictionaries.workExperience?.dictionaryItems
                ?.firstWhere(
                    (element) => element.value == event.data["work_experience"],
                    orElse: () => DictionariesDictionaryItemResponse())
                .id,
            event.data["work_experience"],
          ),
        ),
        income: Income(
          monthly_income: (event.data["monthly_income"] != null)
              ? event.data["monthly_income"]
              : "",
          monthly_expenses: (event.data["monthly_expenses"] != null)
              ? event.data["monthly_expenses"]
              : "",
          loan_expenses: (event.data["loan_expenses"] != null)
              ? event.data["loan_expenses"]
              : "",
          add_income: event.data["additional"] != null
              ? ValueObject(1, "Да")
              : ValueObject(0, "Нет"),
          add_income_amount: (event.data["additional"] != null)
              ? event.data["additional"]
              : "",
          add_income_source: ValueObject(
            _staticRepository.dictionaries.addIncomeSource?.dictionaryItems
                ?.firstWhere(
                    (element) => element.value == event.data["additional_type"],
                    orElse: () => DictionariesDictionaryItemResponse())
                .id,
            event.data["additional_type"],
          ),
        ));
    await _dbService.updateQuestionnaire(newQuestionnaire);
    await _dbService.updateCurrentStage(4);
    final newData = await _dbService.getClientSearchResponse();
    if (newData != null) {
      emit(QuestionnaireFoundSuccess(
        newData.clientSearchResponse,
        newData.questionnaire,
        newData.currentStage,
      ));
    }
  }

  /// Сохранение в локальную бд данных из страницы "Ваше имущество"
  Future<void> savePropertiesData(
      Emitter<QuestionnaireState> emit, SavePropertiesData event) async {
    final realties = event.properties
        .map(
          (e) => Realties(
            market_value: e.marketValue.text,
            type: ValueObject(
              _staticRepository.dictionaries.typeProperty?.dictionaryItems
                  ?.firstWhere((element) => element.value == e.type.text,
                      orElse: () => DictionariesDictionaryItemResponse())
                  .id,
              e.type.text,
            ),
            region: ValueObject(
              _staticRepository.geo.regions
                  ?.firstWhere((element) => element.name == e.region.text,
                      orElse: () => GeoRegionResponse())
                  .id,
              e.region.text,
            ),
          ),
        )
        .toList();
    final vehicles = event.vehicles
        .map(
          (e) => Vehicles(
            market_value: e.marketValue.text.replaceAll(" ", ""),
            type: ValueObject(
              _staticRepository.dictionaries.typeVehicle?.dictionaryItems
                  ?.firstWhere((element) => element.value == e.type.text,
                      orElse: () => DictionariesDictionaryItemResponse())
                  .id,
              e.type.text,
            ),
            year_issue: e.yearIssue.text,
            model: e.model.text,
          ),
        )
        .toList();
    final newQuestionnaire = event.questionnaire.copyWith(
      realties: realties,
      vehicles: vehicles,
    );
    await _dbService.updateQuestionnaire(newQuestionnaire);
    await _dbService.updateCurrentStage(5);
    final newData = await _dbService.getClientSearchResponse();
    if (newData != null) {
      emit(QuestionnaireFoundSuccess(
        newData.clientSearchResponse,
        newData.questionnaire,
        newData.currentStage,
      ));
    }
  }

  /// Отправка анкеты
  /// TODO: исправить некоторые поля
  Future<void> clientScore(
      Emitter<QuestionnaireState> emit, ClientScore event) async {
    final questionnaire =
        (await _dbService.getClientSearchResponse())?.questionnaire;
    print("console  Отправка анкеты ${questionnaire?.toJson()}");
    final request = ClientScoreRequest(
      clientData: ClientScoreClientDataItemRequest(
        lastName: questionnaire?.last_name,
        countryBirth: questionnaire?.birthPlace!.country.id,
        codeFilial: event.id,
        firstName: questionnaire?.first_name,
        docType: questionnaire?.document?.type.id,
        email: questionnaire?.email,
        docEndDate: formatDateForRequest(questionnaire?.document!.end_date),
        pnfl: questionnaire?.pinfl,
        inn: questionnaire?.tin,
        clientId: questionnaire?.client_id,
        residenceCountry: 860,
        mobilePhone: questionnaire?.verified_phone_number,
        docNumber: questionnaire?.document!.number,
        locationBirth: questionnaire?.birthPlace!.location,
        clientCode: questionnaire?.client_uid, // .clientData?.clientCode,
        adminAreaDocument: questionnaire!.document!.type.id,
        docSeries: questionnaire.document!.series,
        gender: questionnaire.gender!.id,
        docIssueDate: formatDateForRequest(questionnaire.document!.issue_date),
        agencyDocument:
            questionnaire.document!.series, // clientData?.agencyDocument,
        dateOfBirth: formatDateForRequest(questionnaire.date_of_birth),
        middleName: questionnaire.middle_name,
        status: 'не знаю что за статус', // e?.clientData?.status,
        residency: questionnaire.residency!.id,
        education: questionnaire.education!.id,
        citizenship: questionnaire.residency!.id,
      ),
      clientLivingAddress: ClientScoreClientAddressRequest(
        houseNumber: questionnaire
            .addresses[0].house_number, // ?.clientLivingAddress?.houseNumber,
        district: questionnaire
            .addresses[0].district.id, //  ? .clientLivingAddress?.district?.id,
        apartmentNumber: questionnaire.addresses[0]
            .apartment_number, //  ?.clientLivingAddress?.apartmentNumber,
        locality: questionnaire
            .addresses[0].location, // ?.clientLivingAddress?.locality,
        adminArea: questionnaire
            .addresses[0].region.id, // ?.clientLivingAddress?.adminArea?.id,
        street:
            questionnaire.addresses[0].street, // ?.clientLivingAddress?.street,
        typeOwnership: questionnaire.addresses[0].realty_type
            .id, // ?.clientLivingAddress?.typeOwnership?.id,
      ),
      clientFamilyData: ClientScoreClientFamilyDataItemRequest(
        maritalStatus: questionnaire.marital_status!.id,
        children: questionnaire.has_children!.id,
        childrenNumber: questionnaire.children_count,
      ),
      clientJobInfo: ClientScoreClientJobInfoItemRequest(
        employerName: questionnaire.job!.employer_name,
        employmentPositionCategory:
            questionnaire.job!.employment_position_category.id,
        workExperience: questionnaire.job!.work_experience.id,
        workerNumber: questionnaire.job!.employee_count.id,
        typeActivity: questionnaire.job!.activity_type.id,
        typeFarm: questionnaire.job!.organization_type.id,
        lastWorkExperience: questionnaire.job!.last_work_experience.id,
        typeOrganization: questionnaire.job!.organization_type.id,
        employerId: questionnaire.job!.employment_position_category.id
            .toString(), //  ?.clientJobInfo?.employerId,
        typeBusiness: questionnaire
            .job!.organization_type.id, // clientJobInfo?.typeBusiness?.id,
      ),
      clientProperties: questionnaire.realties
          .map((e) => ClientScoreClientPropertyItemRequest(
                marketValueRealty: int.parse(e.market_value),
                regionProperty: e.region.id,
                typeProperty: e.type.id,
              ))
          .toList(),
      clientVehicles: questionnaire.vehicles
          .map((e) => ClientScoreClientPropertyItemRequest(
                marketValueVehicle: int.parse(e.market_value),
                yearIssue: int.parse(e.year_issue),
                typeVehicle: e.type.id,
                modelVehicle: e.model,
              ))
          .toList(),
      clientRegistrationAddress: ClientScoreClientAddressRequest(
        houseNumber: questionnaire.addresses[1]
            .house_number, // ?.clientRegistrationAddress?.houseNumber,
        district: questionnaire.addresses[1].district
            .id, //?.clientRegistrationAddress?.district?.id,
        apartmentNumber: questionnaire.addresses[1]
            .apartment_number, // ?.clientRegistrationAddress?.apartmentNumber,
        locality: questionnaire
            .addresses[1].location, // ?.clientRegistrationAddress?.locality,
        adminArea: questionnaire.addresses[1].region
            .id, // ?.clientRegistrationAddress?.adminArea?.id,
        street: questionnaire
            .addresses[1].street, // ?.clientRegistrationAddress?.street,
        typeOwnership: questionnaire.addresses[1].realty_type
            .id, //  ?.clientRegistrationAddress?.typeOwnership?.id,
      ),
      clientTemporaryAddress: ClientScoreClientAddressRequest(
        houseNumber: questionnaire.addresses[1]
            .house_number, // ?.clientTemporaryAddress?.houseNumber,
        district: questionnaire.addresses[1].district
            .id, // ?.clientTemporaryAddress?.district?.id,
        apartmentNumber: questionnaire.addresses[1]
            .apartment_number, // ?.clientTemporaryAddress?.apartmentNumber,
        locality: questionnaire
            .addresses[2].location, // ?.clientTemporaryAddress?.locality,
        adminArea: questionnaire
            .addresses[2].region.id, // ?.clientTemporaryAddress?.adminArea?.id,
        street: questionnaire
            .addresses[2].street, //  ?.clientTemporaryAddress?.street,
        typeOwnership: questionnaire.addresses[2].realty_type
            .id, //  ?.clientTemporaryAddress?.typeOwnership?.id,
      ),
      clientIncome: ClientScoreClientIncomeItemRequest(
        addIncome: questionnaire.income!.add_income.id,
        loanExpenses: int.parse(questionnaire.income!.loan_expenses),
        addIncomeSource: questionnaire.income!.add_income_source.id,
        addIncomeAmount: int.parse(questionnaire.income!.add_income_amount),
        monthlyIncome: int.parse(questionnaire.income!.monthly_income),
        monthlyExpenses: int.parse(questionnaire.income!.monthly_expenses),
      ),
      secretWord: questionnaire.secret_word,
    );

    final response = await _bankRepository.clientScore(request);
    if (response.isRight) {
      emit(const QuestionnaireSentSuccess());
    } else {
      emit(QuestionnaireSentError(response.left));
    }
  }

  String? formatDateForRequest(String? date) {
    if (date == null) {
      return null;
    }
    return "${date.substring(6, 10)}-${date.substring(3, 5)}-${date.substring(0, 2)}";
  }

  String? formatFormDate(String? date) {
    if (date == null) {
      return null;
    }
    final datetime = DateTime.parse(date);
    return "${datetime.day < 10 ? "0${datetime.day}" : datetime.day}.${datetime.month < 10 ? "0${datetime.month}" : datetime.month}.${datetime.year}";
  }
}
