import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/database/db_config.dart';
import 'package:solfy_flutter/models/api/bank/client_score/clientScoreRequestV2.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_address_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_data_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_family_data_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_income_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_job_info_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_property_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_request.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_address_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_data_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_family_data_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_income_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_job_info_response.dart';
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
    printWrapped('dbResponse == ${dbResponse}');
    if (dbResponse != null) {
      emit(QuestionnaireFoundSuccess(
        dbResponse.clientSearchResponse,
        dbResponse.questionnaire,
        dbResponse.currentStage,
      ));
    } else {
      var res = await _profileRepository.getProfile();
      print('phone111 == ${res.right.profile!.toJson()}');
      if (res.isRight) {
        print(
            'phone2222 ==${event.number != null} == ${res.isRight} == ${res.right.profile!.phone}');
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
        print('phone3333 == ${request.toJson()}');
        final response = await _bankRepository.clientSearch(request);
        printWrapped('responst ==== ${response.right.toJson()}');
        if (response.isRight) {
          final clientData = response.right.clientData?.copyWith(
            docIssueDate:
                formatFormDate(response.right.clientData?.docIssueDate),
            docEndDate: formatFormDate(response.right.clientData?.docEndDate),
          );
          print('-------------------------------------');
          printWrapped('clientData >>>>>>>==== ${clientData}');
          print('-------------------------------------');
          printWrapped(
              'clientFamilyData >>>>>>>==== ${response.right.clientFamilyData}');
          print('-------------------------------------');
          await _dbService.saveClientSearchResponse(response.right.copyWith(
            clientData: clientData,
          ));
          await Future.delayed(
            Duration(
              milliseconds: 100,
            ),
          );
          final dbResponse = await _dbService.getClientSearchResponse();
          await Future.delayed(
            Duration(
              milliseconds: 100,
            ),
          );
          printWrapped('clientData dbResponse2222 >>>>>>>==== ${dbResponse}');
          if (dbResponse != null) {
            printWrapped('clientData success');
            emit(QuestionnaireFoundSuccess(
              dbResponse.clientSearchResponse,
              dbResponse.questionnaire,
              dbResponse.currentStage,
            ));
          }
        } else {
          print("errors ==${response.left.errors}");
          emit(QuestionnaireFoundError(response.left));
        }
      }
    }
  }

  /// Сохранение в локальную бд данных из страницы "Персональные данные"
  Future<void> savePersonalData(
      Emitter<QuestionnaireState> emit, SavePersonalData event) async {
    printWrapped('console step1 === ${event.data}');
    print(
        'console ------------------------------------------------------------');
    ValueObject countryBirth = ValueObject(
      _staticRepository.geo.countryItems
          ?.firstWhere((element) =>
              element.countries?.any(
                  (element) => element.name == event.data["country_birth"]) ??
              false)
          .countries
          ?.firstWhere((element) => element.name == event.data["country_birth"])
          .id,
      event.data["country_birth"],
    );
    ValueObject residency = ValueObject(
      _staticRepository.dictionaries.residency?.dictionaryItems
          ?.firstWhere((element) => element.value == event.data["citizenship"])
          .id,
      event.data["citizenship"],
    );
    ValueObject docType = ValueObject(
      _staticRepository.dictionaries.docType?.dictionaryItems
          ?.firstWhere((element) => element.value == event.data["doc_type"])
          .id,
      event.data["doc_type"],
    );
    String? mobilePhone = event.data["mobile_phone1"] != null
        ? (event.data["mobile_phone1"] as String)
            .replaceAll(" ", "")
            .replaceAll("+", "")
            .replaceAll("-", "")
        : null;
    String? adminAreaDocument = event.data["admin_area_document"] != null
        ? (event.data["admin_area_document"] as String)
        : null;
    ValueObject gender = ValueObject(
      _staticRepository.dictionaries.gender?.dictionaryItems
          ?.firstWhere((element) => element.value == event.data["gender"])
          .id,
      event.data["gender"],
    );
    ValueObject education = ValueObject(
      _staticRepository.dictionaries.education?.dictionaryItems
          ?.firstWhere((element) => element.value == event.data["education"])
          .id,
      event.data["education"],
    );
    ValueObject citizenship = ValueObject(
      _staticRepository.dictionaries.residency?.dictionaryItems
          ?.firstWhere((element) => element.value == event.data["citizenship"])
          .id,
      event.data["citizenship"],
    );
    ClientSearchClientDataResponse clientData = ClientSearchClientDataResponse(
      event.data["last_name"],
      countryBirth,
      '', // code_filial
      event.data["first_name"],
      docType,
      event.data["email"],
      event.data["doc_end_date"],
      '', // pnfl
      event.data["inn"],
      '', //client_id
      residency,
      mobilePhone,
      event.data["doc_number"],
      event.data["location_birth"],
      '', // clientCode
      adminAreaDocument,
      event.data["doc_series"],
      gender,
      event.data["doc_issue_date"],
      event.data["agency_document"],
      event.data["date_of_birth"],
      event.data["middle_name"],
      '', //status
      residency,
      education,
      citizenship.id,
    );

    final newQuestionnaire = event.questionnaire.copyWith(
      clientData: clientData,
      clientFamilyData: (event.questionnaire.clientFamilyData == null)
          ? ClientSearchClientFamilyDataResponse(
              (event.data["marital_status"] == null)
                  ? null
                  : ValueObject(
                      _staticRepository
                          .dictionaries.maritalStatus?.dictionaryItems
                          ?.firstWhere((element) =>
                              element.value == event.data["marital_status"])
                          .id,
                      event.data["marital_status"],
                    ),
              (event.data["marital_status"] == null)
                  ? null
                  : ValueObject(
                      (event.data["children_number"] == null &&
                              int.tryParse(event.data["children_number"]) == 0)
                          ? 0
                          : 1,
                      (event.data["children_number"] == null &&
                              int.tryParse(event.data["children_number"]) == 0)
                          ? 'Нет'
                          : 'Есть'),
              event.data["children_number"] != null
                  ? int.tryParse(event.data["children_number"])
                  : 0,
            )
          : event.questionnaire.clientFamilyData!.copyWith(
              maritalStatus: (event.data["marital_status"] == null)
                  ? null
                  : ValueObject(
                      _staticRepository
                          .dictionaries.maritalStatus?.dictionaryItems
                          ?.firstWhere((element) =>
                              element.value == event.data["marital_status"])
                          .id,
                      event.data["marital_status"],
                    ),
              children: ValueObject(
                  (event.data["children_number"] != null &&
                          int.tryParse(event.data["children_number"]) != 0)
                      ? 1
                      : 0,
                  (event.data["children_number"] != null &&
                          int.tryParse(event.data["children_number"]) != 0)
                      ? 'Есть'
                      : 'Нет'),
              childrenNumber: event.data["children_number"] == null
                  ? 0
                  : int.tryParse(event.data["children_number"]),
            ),
      codeWord: event.data["code_word"],
    );
    print(
        'console ------------------------------------------------------------');
    printWrapped('clientData === ${newQuestionnaire.clientData!.toJson()}');
    print(
        'console ------------------------------------------------------------');
    printWrapped(
        'clientFamilyData === ${newQuestionnaire.clientFamilyData!.toJson()}');
    print(
        'console ------------------------------------------------------------');
    await Future.delayed(
      Duration(
        milliseconds: 200,
      ),
    );
    await _dbService.updateQuestionnaire(newQuestionnaire);
    await _dbService.updateCurrentStage(2);
    final newData = await _dbService.getClientSearchResponse();
    await Future.delayed(
      Duration(
        milliseconds: 200,
      ),
    );
    if (newData != null) {
      emit(QuestionnaireFoundSuccess(newData.clientSearchResponse,
          newData.questionnaire, newData.currentStage));
    }
  }

  /// Сохранение в локальную бд данных из страницы "Адрес"
  Future<void> saveAddressData(
      Emitter<QuestionnaireState> emit, SaveAddressData event) async {
    ClientSearchClientAddressResponse getAdress(Map<String, dynamic> data) {
      return ClientSearchClientAddressResponse(
        (event.data["house"] == null) ? null : data["house"],
        (event.data["district"] == null)
            ? null
            : ValueObject(
                _staticRepository.geo.districts
                    ?.firstWhere((element) => element.name == data["district"])
                    .id,
                data["district"],
              ),
        (event.data["apartment"] == null) ? null : data["apartment"],
        (event.data["city"] == null) ? null : data["city"],
        (event.data["region"] == null)
            ? null
            : ValueObject(
                _staticRepository.geo.regions
                    ?.firstWhere((element) => element.name == data["region"])
                    .id,
                data["region"],
              ),
        (event.data["street"] == null) ? null : data["street"],
        (event.data["type"] == null)
            ? null
            : ValueObject(
                _staticRepository.dictionaries.typeOwnership?.dictionaryItems
                    ?.firstWhere((element) => element.value == data["type"])
                    .id,
                data["type"],
              ),
      );
    }

    ClientSearchResponse newQuestionnaire = event.questionnaire.copyWith(
      clientRegistrationAddress: (event
                  .questionnaire.clientRegistrationAddress ==
              null)
          ? getAdress(event.data)
          : event.questionnaire.clientRegistrationAddress!.copyWith(
              adminArea: (event.data["region"] == null)
                  ? null
                  : ValueObject(
                      _staticRepository.geo.regions
                          ?.firstWhere(
                              (element) => element.name == event.data["region"])
                          .id,
                      event.data["region"],
                    ),
              district: (event.data["district"] == null)
                  ? null
                  : ValueObject(
                      _staticRepository.geo.districts
                          ?.firstWhere((element) =>
                              element.name == event.data["district"])
                          .id,
                      event.data["district"],
                    ),
              locality:
                  (event.data["city"] == null) ? null : event.data["city"],
              street:
                  (event.data["street"] == null) ? null : event.data["street"],
              houseNumber:
                  (event.data["house"] == null) ? null : event.data["house"],
              apartmentNumber: (event.data["apartment"] == null)
                  ? null
                  : event.data["apartment"],
              typeOwnership: (event.data["type"] == null)
                  ? null
                  : ValueObject(
                      _staticRepository
                          .dictionaries.typeOwnership?.dictionaryItems
                          ?.firstWhere(
                              (element) => element.value == event.data["type"])
                          .id,
                      event.data["type"],
                    ),
            ),
    );

    ClientSearchClientAddressResponse getAdressTemp(Map<String, dynamic> data) {
      return ClientSearchClientAddressResponse(
        (event.data["temp_house"] == null) ? null : data["temp_house"],
        (event.data["temp_district"] == null)
            ? null
            : ValueObject(
                _staticRepository.geo.districts
                    ?.firstWhere(
                        (element) => element.name == data["temp_district"])
                    .id,
                data["temp_district"],
              ),
        (event.data["temp_apartment"] == null) ? null : data["temp_apartment"],
        (event.data["temp_city"] == null) ? null : data["temp_city"],
        (event.data["temp_region"] == null)
            ? null
            : ValueObject(
                _staticRepository.geo.regions
                    ?.firstWhere(
                        (element) => element.name == data["temp_region"])
                    .id,
                data["temp_region"],
              ),
        (event.data["temp_street"] == null) ? null : data["temp_street"],
        (event.data["temp_type"] == null)
            ? null
            : ValueObject(
                _staticRepository.dictionaries.typeOwnership?.dictionaryItems
                    ?.firstWhere(
                        (element) => element.value == data["temp_type"])
                    .id,
                data["temp_type"],
              ),
      );
    }

    if (event.data["temp_region"] != null) {
      newQuestionnaire = newQuestionnaire.copyWith(
        clientTemporaryAddress: (event
                    .questionnaire.clientRegistrationAddress ==
                null)
            ? getAdressTemp(event.data)
            : event.questionnaire.clientRegistrationAddress!.copyWith(
                adminArea: (event.data["temp_region"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.geo.regions
                            ?.firstWhere(
                                (element) =>
                                    element.name == event.data["temp_region"],
                                orElse: () => GeoRegionResponse())
                            .id,
                        event.data["temp_region"],
                      ),
                district: (event.data["temp_district"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.geo.districts
                            ?.firstWhere(
                                (element) =>
                                    element.name == event.data["temp_district"],
                                orElse: () => GeoDistrictResponse())
                            .id,
                        event.data["temp_district"],
                      ),
                locality: (event.data["temp_city"] == null)
                    ? null
                    : event.data["temp_city"],
                street: (event.data["temp_street"] == null)
                    ? null
                    : event.data["temp_street"],
                houseNumber: (event.data["temp_house"] == null)
                    ? null
                    : event.data["temp_house"],
                apartmentNumber: (event.data["temp_apartment"] == null)
                    ? null
                    : event.data["temp_apartment"],
                typeOwnership: (event.data["temp_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.typeOwnership?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value == event.data["temp_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["temp_type"],
                      ),
              ),
      );
    } else {
      newQuestionnaire =
          newQuestionnaire.copyWith(clientTemporaryAddress: null);
    }
    ClientSearchClientAddressResponse getAdressFact(Map<String, dynamic> data) {
      return ClientSearchClientAddressResponse(
        (event.data["temp_house"] == null) ? null : data["temp_house"],
        (event.data["fact_district"] == null)
            ? null
            : ValueObject(
                _staticRepository.geo.districts
                    ?.firstWhere(
                        (element) => element.name == data["fact_district"])
                    .id,
                data["fact_district"],
              ),
        (event.data["fact_apartment"] == null) ? null : data["fact_apartment"],
        (event.data["fact_city"] == null) ? null : data["fact_city"],
        (event.data["fact_region"] == null)
            ? null
            : ValueObject(
                _staticRepository.geo.regions
                    ?.firstWhere(
                        (element) => element.name == data["fact_region"])
                    .id,
                data["fact_region"],
              ),
        (event.data["fact_street"] == null) ? null : data["fact_street"],
        (event.data["fact_type"] == null)
            ? null
            : ValueObject(
                _staticRepository.dictionaries.typeOwnership?.dictionaryItems
                    ?.firstWhere(
                        (element) => element.value == data["fact_type"])
                    .id,
                data["fact_type"],
              ),
      );
    }

    if (event.data["fact_region"] != null) {
      newQuestionnaire = newQuestionnaire.copyWith(
        clientLivingAddress: (event.questionnaire.clientRegistrationAddress ==
                null)
            ? getAdressFact(event.data)
            : event.questionnaire.clientRegistrationAddress!.copyWith(
                adminArea: (event.data["fact_region"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.geo.regions
                            ?.firstWhere(
                                (element) =>
                                    element.name == event.data["fact_region"],
                                orElse: () => GeoRegionResponse())
                            .id,
                        event.data["fact_region"],
                      ),
                district: (event.data["fact_region"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.geo.districts
                            ?.firstWhere(
                                (element) =>
                                    element.name == event.data["fact_district"],
                                orElse: () => GeoDistrictResponse())
                            .id,
                        event.data["fact_district"],
                      ),
                locality: (event.data["fact_city"] == null)
                    ? null
                    : event.data["fact_city"],
                street: (event.data["fact_street"] == null)
                    ? null
                    : event.data["fact_street"],
                houseNumber: (event.data["fact_house"] == null)
                    ? null
                    : event.data["fact_house"],
                apartmentNumber: (event.data["fact_apartment"] == null)
                    ? null
                    : event.data["fact_apartment"],
                typeOwnership: (event.data["fact_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.typeOwnership?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value == event.data["fact_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["fact_type"],
                      ),
              ),
      );
    } else {
      newQuestionnaire = newQuestionnaire.copyWith(
          clientLivingAddress: event.factSelector ==
                  FactAddressSelector.SameAsRegistrationAddress
              ? newQuestionnaire.clientRegistrationAddress
              : event.factSelector == FactAddressSelector.SameAsTempAddress
                  ? newQuestionnaire.clientTemporaryAddress
                  : null);
    }
    await Future.delayed(
      Duration(
        milliseconds: 200,
      ),
    );
    await _dbService.updateQuestionnaire(newQuestionnaire);
    await _dbService.updateCurrentStage(3);
    await Future.delayed(
      Duration(
        milliseconds: 200,
      ),
    );
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
    printWrapped('SaveJobData >>>>>>>> == ${event.data}');
    print('------------------------------------------------------');
    final newQuestionnaire = event.questionnaire.copyWith(
        clientJobInfo: (event.questionnaire.clientJobInfo == null)
            ? ClientSearchClientJobInfoResponse(
                (event.data["employer_name"] == null)
                    ? null
                    : event.data["employer_name"], // employer_name
                (event.data["position_category"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.dictionaries
                            .employmentPositionCategory?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["position_category"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["category"],
                      ), // employment_position_category
                (event.data["work_experience"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.workExperience?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["work_experience"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["work_experience"],
                      ), //work_experience
                (event.data["worker_number"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.workerNumber?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["worker_number"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["worker_number"],
                      ), //worker_number
                (event.data["activity_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.typeActivity?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["activity_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["activity_type"],
                      ), //type_activity
                (event.data["farm_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.dictionaries.typeFarm?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value == event.data["farm_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["farm_type"],
                      ), // type_farm
                (event.data["last_work_experience"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.lastWorkExperience?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["last_work_experience"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["last_work_experience"],
                      ), //last_work_experience
                (event.data["type_farm"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.dictionaries.typeFarm!.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value == event.data["type_farm"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["type_farm"],
                      ), //type_organization
                (event.data["employer_inn"] == null)
                    ? null
                    : event.data["employer_inn"], // employer_id
                (event.data["last_work_experience"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.lastWorkExperience?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["last_work_experience"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["last_work_experience"],
                      ), //type_business
              )
            : event.questionnaire.clientJobInfo!.copyWith(
                typeOrganization: (event.data["farm_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.dictionaries.typeFarm?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value == event.data["farm_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["farm_type"],
                      ),
                typeActivity: (event.data["activity_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.typeActivity?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["activity_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["activity_type"],
                      ),
                employerName: (event.data["employer_name"] == null)
                    ? null
                    : event.data["employer_name"],
                employerId: (event.data["employer_inn"] == null)
                    ? null
                    : event.data["employer_inn"],
                typeFarm: (event.data["farm_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.dictionaries.typeFarm?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value == event.data["farm_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["farm_type"],
                      ),
                employmentPositionCategory: (event.data["category"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository.dictionaries
                            .employmentPositionCategory?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value == event.data["category"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["category"],
                      ),
                workerNumber: (event.data["worker_number"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.workerNumber?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["worker_number"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["worker_number"],
                      ),
                lastWorkExperience: (event.data["last_work_experience"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.lastWorkExperience?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["last_work_experience"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["last_work_experience"],
                      ),
                workExperience: (event.data["work_experience"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.workExperience?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["work_experience"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["work_experience"],
                      ),
              ),
        clientIncome: (event.questionnaire.clientIncome == null)
            ? ClientSearchClientIncomeResponse(
                (event.data["additional"] == null)
                    ? null
                    : (event.data["additional"] is String)
                        ? int.parse(event.data["additional"])
                        : event.data["additional"], //addIncomeAmount
                (event.data["loan_expenses"] == null)
                    ? null
                    : int.parse((event.data["loan_expenses"] as String)
                        .replaceAll(" ", "")), //loanExpenses
                (event.data["additional_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.addIncomeSource?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["additional_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["additional_type"],
                      ), //addIncomeSource
                (event.data["real_estate_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.typeProperty!.dictionaryItems!
                            .firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["real_estate_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["real_estate_type"],
                      ), //add_real_estate_type
                (event.data["type_ownership"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.typeOwnership!.dictionaryItems!
                            .firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["type_ownership"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["type_ownership"],
                      ), //add_type_ownership
                (event.data["additional"] == null)
                    ? ValueObject(0, "Нет")
                    : ValueObject(1, "Да"), //addIncome
                (event.data["monthly_expenses"] == null)
                    ? null
                    : int.parse((event.data["monthly_expenses"] as String)
                        .replaceAll(" ", "")), //monthlyIncome
                (event.data["monthly_income"] == null)
                    ? null
                    : int.parse((event.data["monthly_income"] as String)
                        .replaceAll(" ", "")), //monthlyExpenses
              )
            : event.questionnaire.clientIncome!.copyWith(
                monthlyIncome: (event.data["monthly_income"] == null)
                    ? null
                    : int.parse(event.data["monthly_income"] != null
                        ? (event.data["monthly_income"] as String)
                            .replaceAll(" ", "")
                        : ""), //addIncomeAmount
                monthlyExpenses: (event.data["monthly_expenses"] == null)
                    ? null
                    : int.tryParse(event.data["monthly_expenses"] != null
                        ? (event.data["monthly_expenses"] as String)
                            .replaceAll(" ", "")
                        : ""),
                loanExpenses: (event.data["loan_expenses"] == null)
                    ? null
                    : int.tryParse(event.data["loan_expenses"] != null
                        ? (event.data["loan_expenses"] as String)
                            .replaceAll(" ", "")
                        : ""), // loan_expenses
                addIncome: (event.data["additional"] == null)
                    ? ValueObject(0, "Нет")
                    : ValueObject(1, "Да"),
                addIncomeAmount: (event.data["additional"] == null)
                    ? null
                    : int.tryParse(event.data["additional"] != null
                        ? (event.data["additional"] as String)
                            .replaceAll(" ", "")
                        : ""),
                addIncomeSource: (event.data["additional_type"] == null)
                    ? null
                    : ValueObject(
                        _staticRepository
                            .dictionaries.addIncomeSource?.dictionaryItems
                            ?.firstWhere(
                                (element) =>
                                    element.value ==
                                    event.data["additional_type"],
                                orElse: () =>
                                    DictionariesDictionaryItemResponse())
                            .id,
                        event.data["additional_type"],
                      ),
              ));
    event.questionnaire.clientJobInfo!.copyWith(
      typeOrganization: ValueObject(2, 'lkkd'),
    );
    print('------------------------------------------------------');
    print(
        'employmentPositionCategory >>> ${event.questionnaire.clientJobInfo!.toJson()}');

    print('------------------------------------------------------');
    printWrapped(
        'clientIncome >>>>>>> == ${newQuestionnaire.clientIncome!.toJson()}');
    print('------------------------------------------------------');
    await Future.delayed(
      Duration(
        milliseconds: 200,
      ),
    );
    await _dbService.updateQuestionnaire(newQuestionnaire);
    await _dbService.updateCurrentStage(4);
    final newData = await _dbService.getClientSearchResponse();
    await Future.delayed(
      Duration(
        milliseconds: 200,
      ),
    );
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
    final properties = event.properties
        .map(
          (e) => ClientSearchClientPropertiesItemResponse(
            marketValueRealty:
                int.tryParse(e.marketValue.text.replaceAll(" ", "")),
            typeProperty: ValueObject(
              _staticRepository.dictionaries.typeProperty?.dictionaryItems
                  ?.firstWhere((element) => element.value == e.type.text,
                      orElse: () => DictionariesDictionaryItemResponse())
                  .id,
              e.type.text,
            ),
            regionProperty: ValueObject(
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
          (e) => ClientSearchClientPropertiesItemResponse(
            marketValueVehicle:
                int.tryParse(e.marketValue.text.replaceAll(" ", "")),
            typeVehicle: ValueObject(
              _staticRepository.dictionaries.typeVehicle?.dictionaryItems
                  ?.firstWhere((element) => element.value == e.type.text,
                      orElse: () => DictionariesDictionaryItemResponse())
                  .id,
              e.type.text,
            ),
            yearIssue: int.tryParse(e.yearIssue.text),
            modelVehicle: e.model.text,
          ),
        )
        .toList();
    final newQuestionnaire = event.questionnaire.copyWith(
      clientProperties: properties,
      clientVehicles: vehicles,
    );
    await _dbService.updateQuestionnaire(newQuestionnaire);
    ClientSearchResponseRecord? st = await _dbService.getClientSearchResponse();
    printWrapped(
        'newQuestionnaire last >>>>>>>>> === ${st!.questionnaire.toJson()}');
    await _dbService.updateCurrentStage(5);
    final newData = await _dbService.getClientSearchResponse();
    await Future.delayed(
      Duration(
        milliseconds: 200,
      ),
    );
    if (newData != null) {
      emit(QuestionnaireFoundSuccess(
        newData.clientSearchResponse,
        newData.questionnaire,
        newData.currentStage,
      ));
    }
  }

  /// Отправка анкеты
  Future<void> clientScore(
      Emitter<QuestionnaireState> emit, ClientScore event) async {
    await Future.delayed(
      Duration(
        milliseconds: 200,
      ),
    );
    final questionnaire =
        (await _dbService.getClientSearchResponse())?.questionnaire;
    printWrapped("console  Отправка анкеты ${questionnaire?.toJson()}");
    final request = ClientScoreRequest(
      clientData: ClientScoreClientDataItemRequest(
        lastName: questionnaire?.clientData?.lastName,
        countryBirth: questionnaire?.clientData?.countryBirth?.id,
        codeFilial: event.id,
        firstName: questionnaire?.clientData?.firstName,
        docType: questionnaire?.clientData?.docType?.id,
        email: questionnaire?.clientData?.email,
        docEndDate: formatDateForRequest(questionnaire?.clientData?.docEndDate),
        pnfl: questionnaire?.clientData?.pnfl,
        inn: questionnaire?.clientData?.inn,
        clientId: questionnaire?.clientData?.clientId,
        residenceCountry: 860,
        mobilePhone: questionnaire?.clientData?.mobilePhone,
        docNumber: questionnaire?.clientData?.docNumber,
        locationBirth: questionnaire?.clientData?.locationBirth,
        clientCode: questionnaire?.clientData?.clientCode,
        adminAreaDocument:
            questionnaire?.clientData?.adminAreaDocument.toString(),
        docSeries: questionnaire?.clientData?.docSeries,
        gender: questionnaire?.clientData?.gender?.id,
        docIssueDate:
            formatDateForRequest(questionnaire?.clientData?.docIssueDate),
        agencyDocument: questionnaire?.clientData?.agencyDocument,
        dateOfBirth:
            formatDateForRequest(questionnaire?.clientData?.dateOfBirth),
        middleName: questionnaire?.clientData?.middleName,
        status: questionnaire?.clientData?.status,
        residency: questionnaire?.clientData?.residency?.id,
        education: questionnaire?.clientData?.education?.id,
        citizenship: questionnaire?.clientData?.citizenship,
      ),
      clientLivingAddress: ClientScoreClientAddressRequest(
        houseNumber: questionnaire?.clientLivingAddress?.houseNumber,
        district: questionnaire?.clientLivingAddress?.district?.id,
        apartmentNumber: questionnaire?.clientLivingAddress?.apartmentNumber,
        locality: questionnaire?.clientLivingAddress?.locality,
        adminArea: questionnaire?.clientLivingAddress?.adminArea?.id,
        street: questionnaire?.clientLivingAddress?.street,
        typeOwnership: questionnaire?.clientLivingAddress?.typeOwnership?.id,
      ),
      clientFamilyData: ClientScoreClientFamilyDataItemRequest(
        maritalStatus: questionnaire?.clientFamilyData?.maritalStatus?.id,
        children:
            questionnaire?.clientFamilyData?.childrenNumber != null ? 1 : 0,
        childrenNumber: questionnaire?.clientFamilyData?.childrenNumber,
      ),
      clientJobInfo: ClientScoreClientJobInfoItemRequest(
        employerName: questionnaire?.clientJobInfo?.employerName,
        employmentPositionCategory:
            questionnaire?.clientJobInfo?.employmentPositionCategory?.id,
        workExperience: questionnaire?.clientJobInfo?.workExperience?.id,
        workerNumber: questionnaire?.clientJobInfo?.workerNumber?.id,
        typeActivity: questionnaire?.clientJobInfo?.typeActivity?.id,
        typeFarm: questionnaire?.clientJobInfo?.typeFarm?.id,
        lastWorkExperience:
            questionnaire?.clientJobInfo?.lastWorkExperience?.id,
        typeOrganization: questionnaire?.clientJobInfo?.typeOrganization?.id,
        employerId: questionnaire?.clientJobInfo?.employerId,
        typeBusiness: questionnaire?.clientJobInfo?.typeBusiness?.id,
      ),
      clientProperties: questionnaire?.clientProperties
          ?.map((e) => ClientScoreClientPropertyItemRequest(
                marketValueRealty: e.marketValueRealty,
                regionProperty: e.regionProperty?.id,
                typeProperty: e.typeProperty?.id,
              ))
          .toList(),
      clientVehicles: questionnaire?.clientVehicles
          ?.map((e) => ClientScoreClientPropertyItemRequest(
                marketValueVehicle: e.marketValueVehicle,
                yearIssue: e.yearIssue,
                typeVehicle: e.typeVehicle?.id,
                modelVehicle: e.modelVehicle,
              ))
          .toList(),
      clientRegistrationAddress: ClientScoreClientAddressRequest(
        houseNumber: questionnaire?.clientRegistrationAddress?.houseNumber,
        district: questionnaire?.clientRegistrationAddress?.district?.id,
        apartmentNumber:
            questionnaire?.clientRegistrationAddress?.apartmentNumber,
        locality: questionnaire?.clientRegistrationAddress?.locality,
        adminArea: questionnaire?.clientRegistrationAddress?.adminArea?.id,
        street: questionnaire?.clientRegistrationAddress?.street,
        typeOwnership:
            questionnaire?.clientRegistrationAddress?.typeOwnership?.id,
      ),
      clientTemporaryAddress: ClientScoreClientAddressRequest(
        houseNumber: questionnaire?.clientTemporaryAddress?.houseNumber,
        district: questionnaire?.clientTemporaryAddress?.district?.id,
        apartmentNumber: questionnaire?.clientTemporaryAddress?.apartmentNumber,
        locality: questionnaire?.clientTemporaryAddress?.locality,
        adminArea: questionnaire?.clientTemporaryAddress?.adminArea?.id,
        street: questionnaire?.clientTemporaryAddress?.street,
        typeOwnership: questionnaire?.clientTemporaryAddress?.typeOwnership?.id,
      ),
      clientIncome: ClientScoreClientIncomeItemRequest(
        addIncome: questionnaire?.clientIncome?.addIncome?.id,
        loanExpenses: questionnaire?.clientIncome?.loanExpenses,
        addIncomeSource: questionnaire?.clientIncome?.addIncomeSource?.id,
        addIncomeAmount: questionnaire?.clientIncome?.addIncomeAmount,
        monthlyIncome: questionnaire?.clientIncome?.monthlyIncome,
        monthlyExpenses: questionnaire?.clientIncome?.monthlyExpenses,
      ),
      secretWord: questionnaire?.codeWord,
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
