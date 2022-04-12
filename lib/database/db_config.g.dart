// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_config.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class UserSettingsRecord extends DataClass
    implements Insertable<UserSettingsRecord> {
  /// Идентификатор записи
  final int id;

  /// Идентификатор региона (deprecated)
  final int? geoRegionId;

  /// Идентификатор города
  final int? geoCityId;

  /// Включен ли режим "Рядом со мной"
  final bool isMyLocation;

  /// Включен ли режим входа по биометрии
  final bool isBiometricEnabled;

  /// Просматривалась ли обучающая карусель в кошельке (deprecated)
  final bool isWalletCarouselWatched;

  /// Последние запросы поиска категорий и магазинов
  final List<String>? searchLastQueries;

  /// Текущая локализация
  final String locale;
  UserSettingsRecord(
      {required this.id,
      this.geoRegionId,
      this.geoCityId,
      required this.isMyLocation,
      required this.isBiometricEnabled,
      required this.isWalletCarouselWatched,
      this.searchLastQueries,
      required this.locale});
  factory UserSettingsRecord.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserSettingsRecord(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      geoRegionId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}geo_region_id']),
      geoCityId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}geo_city_id']),
      isMyLocation: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_my_location'])!,
      isBiometricEnabled: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}is_biometric_enabled'])!,
      isWalletCarouselWatched: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}is_wallet_carousel_watched'])!,
      searchLastQueries: $UserSettingsRecordsTable.$converter0.mapToDart(
          const StringType().mapFromDatabaseResponse(
              data['${effectivePrefix}search_last_queries'])),
      locale: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}locale'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || geoRegionId != null) {
      map['geo_region_id'] = Variable<int?>(geoRegionId);
    }
    if (!nullToAbsent || geoCityId != null) {
      map['geo_city_id'] = Variable<int?>(geoCityId);
    }
    map['is_my_location'] = Variable<bool>(isMyLocation);
    map['is_biometric_enabled'] = Variable<bool>(isBiometricEnabled);
    map['is_wallet_carousel_watched'] = Variable<bool>(isWalletCarouselWatched);
    if (!nullToAbsent || searchLastQueries != null) {
      final converter = $UserSettingsRecordsTable.$converter0;
      map['search_last_queries'] =
          Variable<String?>(converter.mapToSql(searchLastQueries));
    }
    map['locale'] = Variable<String>(locale);
    return map;
  }

  UserSettingsRecordsCompanion toCompanion(bool nullToAbsent) {
    return UserSettingsRecordsCompanion(
      id: Value(id),
      geoRegionId: geoRegionId == null && nullToAbsent
          ? const Value.absent()
          : Value(geoRegionId),
      geoCityId: geoCityId == null && nullToAbsent
          ? const Value.absent()
          : Value(geoCityId),
      isMyLocation: Value(isMyLocation),
      isBiometricEnabled: Value(isBiometricEnabled),
      isWalletCarouselWatched: Value(isWalletCarouselWatched),
      searchLastQueries: searchLastQueries == null && nullToAbsent
          ? const Value.absent()
          : Value(searchLastQueries),
      locale: Value(locale),
    );
  }

  factory UserSettingsRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserSettingsRecord(
      id: serializer.fromJson<int>(json['id']),
      geoRegionId: serializer.fromJson<int?>(json['geoRegionId']),
      geoCityId: serializer.fromJson<int?>(json['geoCityId']),
      isMyLocation: serializer.fromJson<bool>(json['isMyLocation']),
      isBiometricEnabled: serializer.fromJson<bool>(json['isBiometricEnabled']),
      isWalletCarouselWatched:
          serializer.fromJson<bool>(json['isWalletCarouselWatched']),
      searchLastQueries:
          serializer.fromJson<List<String>?>(json['searchLastQueries']),
      locale: serializer.fromJson<String>(json['locale']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'geoRegionId': serializer.toJson<int?>(geoRegionId),
      'geoCityId': serializer.toJson<int?>(geoCityId),
      'isMyLocation': serializer.toJson<bool>(isMyLocation),
      'isBiometricEnabled': serializer.toJson<bool>(isBiometricEnabled),
      'isWalletCarouselWatched':
          serializer.toJson<bool>(isWalletCarouselWatched),
      'searchLastQueries': serializer.toJson<List<String>?>(searchLastQueries),
      'locale': serializer.toJson<String>(locale),
    };
  }

  UserSettingsRecord copyWith(
          {int? id,
          int? geoRegionId,
          int? geoCityId,
          bool? isMyLocation,
          bool? isBiometricEnabled,
          bool? isWalletCarouselWatched,
          List<String>? searchLastQueries,
          String? locale}) =>
      UserSettingsRecord(
        id: id ?? this.id,
        geoRegionId: geoRegionId ?? this.geoRegionId,
        geoCityId: geoCityId ?? this.geoCityId,
        isMyLocation: isMyLocation ?? this.isMyLocation,
        isBiometricEnabled: isBiometricEnabled ?? this.isBiometricEnabled,
        isWalletCarouselWatched:
            isWalletCarouselWatched ?? this.isWalletCarouselWatched,
        searchLastQueries: searchLastQueries ?? this.searchLastQueries,
        locale: locale ?? this.locale,
      );
  @override
  String toString() {
    return (StringBuffer('UserSettingsRecord(')
          ..write('id: $id, ')
          ..write('geoRegionId: $geoRegionId, ')
          ..write('geoCityId: $geoCityId, ')
          ..write('isMyLocation: $isMyLocation, ')
          ..write('isBiometricEnabled: $isBiometricEnabled, ')
          ..write('isWalletCarouselWatched: $isWalletCarouselWatched, ')
          ..write('searchLastQueries: $searchLastQueries, ')
          ..write('locale: $locale')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          geoRegionId.hashCode,
          $mrjc(
              geoCityId.hashCode,
              $mrjc(
                  isMyLocation.hashCode,
                  $mrjc(
                      isBiometricEnabled.hashCode,
                      $mrjc(
                          isWalletCarouselWatched.hashCode,
                          $mrjc(searchLastQueries.hashCode,
                              locale.hashCode))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserSettingsRecord &&
          other.id == this.id &&
          other.geoRegionId == this.geoRegionId &&
          other.geoCityId == this.geoCityId &&
          other.isMyLocation == this.isMyLocation &&
          other.isBiometricEnabled == this.isBiometricEnabled &&
          other.isWalletCarouselWatched == this.isWalletCarouselWatched &&
          other.searchLastQueries == this.searchLastQueries &&
          other.locale == this.locale);
}

class UserSettingsRecordsCompanion extends UpdateCompanion<UserSettingsRecord> {
  final Value<int> id;
  final Value<int?> geoRegionId;
  final Value<int?> geoCityId;
  final Value<bool> isMyLocation;
  final Value<bool> isBiometricEnabled;
  final Value<bool> isWalletCarouselWatched;
  final Value<List<String>?> searchLastQueries;
  final Value<String> locale;
  const UserSettingsRecordsCompanion({
    this.id = const Value.absent(),
    this.geoRegionId = const Value.absent(),
    this.geoCityId = const Value.absent(),
    this.isMyLocation = const Value.absent(),
    this.isBiometricEnabled = const Value.absent(),
    this.isWalletCarouselWatched = const Value.absent(),
    this.searchLastQueries = const Value.absent(),
    this.locale = const Value.absent(),
  });
  UserSettingsRecordsCompanion.insert({
    this.id = const Value.absent(),
    this.geoRegionId = const Value.absent(),
    this.geoCityId = const Value.absent(),
    this.isMyLocation = const Value.absent(),
    this.isBiometricEnabled = const Value.absent(),
    this.isWalletCarouselWatched = const Value.absent(),
    this.searchLastQueries = const Value.absent(),
    this.locale = const Value.absent(),
  });
  static Insertable<UserSettingsRecord> custom({
    Expression<int>? id,
    Expression<int?>? geoRegionId,
    Expression<int?>? geoCityId,
    Expression<bool>? isMyLocation,
    Expression<bool>? isBiometricEnabled,
    Expression<bool>? isWalletCarouselWatched,
    Expression<List<String>?>? searchLastQueries,
    Expression<String>? locale,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (geoRegionId != null) 'geo_region_id': geoRegionId,
      if (geoCityId != null) 'geo_city_id': geoCityId,
      if (isMyLocation != null) 'is_my_location': isMyLocation,
      if (isBiometricEnabled != null)
        'is_biometric_enabled': isBiometricEnabled,
      if (isWalletCarouselWatched != null)
        'is_wallet_carousel_watched': isWalletCarouselWatched,
      if (searchLastQueries != null) 'search_last_queries': searchLastQueries,
      if (locale != null) 'locale': locale,
    });
  }

  UserSettingsRecordsCompanion copyWith(
      {Value<int>? id,
      Value<int?>? geoRegionId,
      Value<int?>? geoCityId,
      Value<bool>? isMyLocation,
      Value<bool>? isBiometricEnabled,
      Value<bool>? isWalletCarouselWatched,
      Value<List<String>?>? searchLastQueries,
      Value<String>? locale}) {
    return UserSettingsRecordsCompanion(
      id: id ?? this.id,
      geoRegionId: geoRegionId ?? this.geoRegionId,
      geoCityId: geoCityId ?? this.geoCityId,
      isMyLocation: isMyLocation ?? this.isMyLocation,
      isBiometricEnabled: isBiometricEnabled ?? this.isBiometricEnabled,
      isWalletCarouselWatched:
          isWalletCarouselWatched ?? this.isWalletCarouselWatched,
      searchLastQueries: searchLastQueries ?? this.searchLastQueries,
      locale: locale ?? this.locale,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (geoRegionId.present) {
      map['geo_region_id'] = Variable<int?>(geoRegionId.value);
    }
    if (geoCityId.present) {
      map['geo_city_id'] = Variable<int?>(geoCityId.value);
    }
    if (isMyLocation.present) {
      map['is_my_location'] = Variable<bool>(isMyLocation.value);
    }
    if (isBiometricEnabled.present) {
      map['is_biometric_enabled'] = Variable<bool>(isBiometricEnabled.value);
    }
    if (isWalletCarouselWatched.present) {
      map['is_wallet_carousel_watched'] =
          Variable<bool>(isWalletCarouselWatched.value);
    }
    if (searchLastQueries.present) {
      final converter = $UserSettingsRecordsTable.$converter0;
      map['search_last_queries'] =
          Variable<String?>(converter.mapToSql(searchLastQueries.value));
    }
    if (locale.present) {
      map['locale'] = Variable<String>(locale.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserSettingsRecordsCompanion(')
          ..write('id: $id, ')
          ..write('geoRegionId: $geoRegionId, ')
          ..write('geoCityId: $geoCityId, ')
          ..write('isMyLocation: $isMyLocation, ')
          ..write('isBiometricEnabled: $isBiometricEnabled, ')
          ..write('isWalletCarouselWatched: $isWalletCarouselWatched, ')
          ..write('searchLastQueries: $searchLastQueries, ')
          ..write('locale: $locale')
          ..write(')'))
        .toString();
  }
}

class $UserSettingsRecordsTable extends UserSettingsRecords
    with TableInfo<$UserSettingsRecordsTable, UserSettingsRecord> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UserSettingsRecordsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _geoRegionIdMeta =
      const VerificationMeta('geoRegionId');
  late final GeneratedColumn<int?> geoRegionId = GeneratedColumn<int?>(
      'geo_region_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _geoCityIdMeta = const VerificationMeta('geoCityId');
  late final GeneratedColumn<int?> geoCityId = GeneratedColumn<int?>(
      'geo_city_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _isMyLocationMeta =
      const VerificationMeta('isMyLocation');
  late final GeneratedColumn<bool?> isMyLocation = GeneratedColumn<bool?>(
      'is_my_location', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_my_location IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _isBiometricEnabledMeta =
      const VerificationMeta('isBiometricEnabled');
  late final GeneratedColumn<bool?> isBiometricEnabled = GeneratedColumn<bool?>(
      'is_biometric_enabled', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_biometric_enabled IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _isWalletCarouselWatchedMeta =
      const VerificationMeta('isWalletCarouselWatched');
  late final GeneratedColumn<bool?> isWalletCarouselWatched =
      GeneratedColumn<bool?>('is_wallet_carousel_watched', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'CHECK (is_wallet_carousel_watched IN (0, 1))',
          defaultValue: const Constant(false));
  final VerificationMeta _searchLastQueriesMeta =
      const VerificationMeta('searchLastQueries');
  late final GeneratedColumnWithTypeConverter<List<String>, String?>
      searchLastQueries = GeneratedColumn<String?>(
              'search_last_queries', aliasedName, true,
              typeName: 'TEXT', requiredDuringInsert: false)
          .withConverter<List<String>>($UserSettingsRecordsTable.$converter0);
  final VerificationMeta _localeMeta = const VerificationMeta('locale');
  late final GeneratedColumn<String?> locale = GeneratedColumn<String?>(
      'locale', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: false,
      defaultValue: const Constant("ru"));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        geoRegionId,
        geoCityId,
        isMyLocation,
        isBiometricEnabled,
        isWalletCarouselWatched,
        searchLastQueries,
        locale
      ];
  @override
  String get aliasedName => _alias ?? 'user_settings_records';
  @override
  String get actualTableName => 'user_settings_records';
  @override
  VerificationContext validateIntegrity(Insertable<UserSettingsRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('geo_region_id')) {
      context.handle(
          _geoRegionIdMeta,
          geoRegionId.isAcceptableOrUnknown(
              data['geo_region_id']!, _geoRegionIdMeta));
    }
    if (data.containsKey('geo_city_id')) {
      context.handle(
          _geoCityIdMeta,
          geoCityId.isAcceptableOrUnknown(
              data['geo_city_id']!, _geoCityIdMeta));
    }
    if (data.containsKey('is_my_location')) {
      context.handle(
          _isMyLocationMeta,
          isMyLocation.isAcceptableOrUnknown(
              data['is_my_location']!, _isMyLocationMeta));
    }
    if (data.containsKey('is_biometric_enabled')) {
      context.handle(
          _isBiometricEnabledMeta,
          isBiometricEnabled.isAcceptableOrUnknown(
              data['is_biometric_enabled']!, _isBiometricEnabledMeta));
    }
    if (data.containsKey('is_wallet_carousel_watched')) {
      context.handle(
          _isWalletCarouselWatchedMeta,
          isWalletCarouselWatched.isAcceptableOrUnknown(
              data['is_wallet_carousel_watched']!,
              _isWalletCarouselWatchedMeta));
    }
    context.handle(_searchLastQueriesMeta, const VerificationResult.success());
    if (data.containsKey('locale')) {
      context.handle(_localeMeta,
          locale.isAcceptableOrUnknown(data['locale']!, _localeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserSettingsRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserSettingsRecord.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserSettingsRecordsTable createAlias(String alias) {
    return $UserSettingsRecordsTable(_db, alias);
  }

  static TypeConverter<List<String>, String> $converter0 =
      const SearchLastQueriesConverter();
}

class ClientSearchResponseRecord extends DataClass
    implements Insertable<ClientSearchResponseRecord> {
  /// Идентификатор записи
  final int id;

  /// Полученная с сервера анкеты
  final ClientSearchResponse clientSearchResponse;

  /// Анкета, с которой ведется работа (редактирование)
  final ClientSearchResponse questionnaire;

  /// Текущий этап анкеты
  final int currentStage;
  ClientSearchResponseRecord(
      {required this.id,
      required this.clientSearchResponse,
      required this.questionnaire,
      required this.currentStage});
  factory ClientSearchResponseRecord.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ClientSearchResponseRecord(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      clientSearchResponse: $ClientSearchResponseRecordsTable.$converter0
          .mapToDart(const StringType().mapFromDatabaseResponse(
              data['${effectivePrefix}client_search_response']))!,
      questionnaire: $ClientSearchResponseRecordsTable.$converter1.mapToDart(
          const StringType().mapFromDatabaseResponse(
              data['${effectivePrefix}questionnaire']))!,
      currentStage: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current_stage'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      final converter = $ClientSearchResponseRecordsTable.$converter0;
      map['client_search_response'] =
          Variable<String>(converter.mapToSql(clientSearchResponse)!);
    }
    {
      final converter = $ClientSearchResponseRecordsTable.$converter1;
      map['questionnaire'] =
          Variable<String>(converter.mapToSql(questionnaire)!);
    }
    map['current_stage'] = Variable<int>(currentStage);
    return map;
  }

  ClientSearchResponseRecordsCompanion toCompanion(bool nullToAbsent) {
    return ClientSearchResponseRecordsCompanion(
      id: Value(id),
      clientSearchResponse: Value(clientSearchResponse),
      questionnaire: Value(questionnaire),
      currentStage: Value(currentStage),
    );
  }

  factory ClientSearchResponseRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ClientSearchResponseRecord(
      id: serializer.fromJson<int>(json['id']),
      clientSearchResponse: serializer
          .fromJson<ClientSearchResponse>(json['clientSearchResponse']),
      questionnaire:
          serializer.fromJson<ClientSearchResponse>(json['questionnaire']),
      currentStage: serializer.fromJson<int>(json['currentStage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'clientSearchResponse':
          serializer.toJson<ClientSearchResponse>(clientSearchResponse),
      'questionnaire': serializer.toJson<ClientSearchResponse>(questionnaire),
      'currentStage': serializer.toJson<int>(currentStage),
    };
  }

  ClientSearchResponseRecord copyWith(
          {int? id,
          ClientSearchResponse? clientSearchResponse,
          ClientSearchResponse? questionnaire,
          int? currentStage}) =>
      ClientSearchResponseRecord(
        id: id ?? this.id,
        clientSearchResponse: clientSearchResponse ?? this.clientSearchResponse,
        questionnaire: questionnaire ?? this.questionnaire,
        currentStage: currentStage ?? this.currentStage,
      );
  @override
  String toString() {
    return (StringBuffer('ClientSearchResponseRecord(')
          ..write('id: $id, ')
          ..write('clientSearchResponse: $clientSearchResponse, ')
          ..write('questionnaire: $questionnaire, ')
          ..write('currentStage: $currentStage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(clientSearchResponse.hashCode,
          $mrjc(questionnaire.hashCode, currentStage.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientSearchResponseRecord &&
          other.id == this.id &&
          other.clientSearchResponse == this.clientSearchResponse &&
          other.questionnaire == this.questionnaire &&
          other.currentStage == this.currentStage);
}

class ClientSearchResponseRecordsCompanion
    extends UpdateCompanion<ClientSearchResponseRecord> {
  final Value<int> id;
  final Value<ClientSearchResponse> clientSearchResponse;
  final Value<ClientSearchResponse> questionnaire;
  final Value<int> currentStage;
  const ClientSearchResponseRecordsCompanion({
    this.id = const Value.absent(),
    this.clientSearchResponse = const Value.absent(),
    this.questionnaire = const Value.absent(),
    this.currentStage = const Value.absent(),
  });
  ClientSearchResponseRecordsCompanion.insert({
    this.id = const Value.absent(),
    required ClientSearchResponse clientSearchResponse,
    required ClientSearchResponse questionnaire,
    this.currentStage = const Value.absent(),
  })  : clientSearchResponse = Value(clientSearchResponse),
        questionnaire = Value(questionnaire);
  static Insertable<ClientSearchResponseRecord> custom({
    Expression<int>? id,
    Expression<ClientSearchResponse>? clientSearchResponse,
    Expression<ClientSearchResponse>? questionnaire,
    Expression<int>? currentStage,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clientSearchResponse != null)
        'client_search_response': clientSearchResponse,
      if (questionnaire != null) 'questionnaire': questionnaire,
      if (currentStage != null) 'current_stage': currentStage,
    });
  }

  ClientSearchResponseRecordsCompanion copyWith(
      {Value<int>? id,
      Value<ClientSearchResponse>? clientSearchResponse,
      Value<ClientSearchResponse>? questionnaire,
      Value<int>? currentStage}) {
    return ClientSearchResponseRecordsCompanion(
      id: id ?? this.id,
      clientSearchResponse: clientSearchResponse ?? this.clientSearchResponse,
      questionnaire: questionnaire ?? this.questionnaire,
      currentStage: currentStage ?? this.currentStage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (clientSearchResponse.present) {
      final converter = $ClientSearchResponseRecordsTable.$converter0;
      map['client_search_response'] =
          Variable<String>(converter.mapToSql(clientSearchResponse.value)!);
    }
    if (questionnaire.present) {
      final converter = $ClientSearchResponseRecordsTable.$converter1;
      map['questionnaire'] =
          Variable<String>(converter.mapToSql(questionnaire.value)!);
    }
    if (currentStage.present) {
      map['current_stage'] = Variable<int>(currentStage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientSearchResponseRecordsCompanion(')
          ..write('id: $id, ')
          ..write('clientSearchResponse: $clientSearchResponse, ')
          ..write('questionnaire: $questionnaire, ')
          ..write('currentStage: $currentStage')
          ..write(')'))
        .toString();
  }
}

class $ClientSearchResponseRecordsTable extends ClientSearchResponseRecords
    with
        TableInfo<$ClientSearchResponseRecordsTable,
            ClientSearchResponseRecord> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ClientSearchResponseRecordsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _clientSearchResponseMeta =
      const VerificationMeta('clientSearchResponse');
  late final GeneratedColumnWithTypeConverter<ClientSearchResponse, String?>
      clientSearchResponse = GeneratedColumn<String?>(
              'client_search_response', aliasedName, false,
              typeName: 'TEXT', requiredDuringInsert: true)
          .withConverter<ClientSearchResponse>(
              $ClientSearchResponseRecordsTable.$converter0);
  final VerificationMeta _questionnaireMeta =
      const VerificationMeta('questionnaire');
  late final GeneratedColumnWithTypeConverter<ClientSearchResponse, String?>
      questionnaire = GeneratedColumn<String?>(
              'questionnaire', aliasedName, false,
              typeName: 'TEXT', requiredDuringInsert: true)
          .withConverter<ClientSearchResponse>(
              $ClientSearchResponseRecordsTable.$converter1);
  final VerificationMeta _currentStageMeta =
      const VerificationMeta('currentStage');
  late final GeneratedColumn<int?> currentStage = GeneratedColumn<int?>(
      'current_stage', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns =>
      [id, clientSearchResponse, questionnaire, currentStage];
  @override
  String get aliasedName => _alias ?? 'client_search_response_records';
  @override
  String get actualTableName => 'client_search_response_records';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClientSearchResponseRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(
        _clientSearchResponseMeta, const VerificationResult.success());
    context.handle(_questionnaireMeta, const VerificationResult.success());
    if (data.containsKey('current_stage')) {
      context.handle(
          _currentStageMeta,
          currentStage.isAcceptableOrUnknown(
              data['current_stage']!, _currentStageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClientSearchResponseRecord map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return ClientSearchResponseRecord.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ClientSearchResponseRecordsTable createAlias(String alias) {
    return $ClientSearchResponseRecordsTable(_db, alias);
  }

  static TypeConverter<ClientSearchResponse, String> $converter0 =
      const ClientSearchResponseConverter();
  static TypeConverter<ClientSearchResponse, String> $converter1 =
      const ClientSearchResponseConverter();
}

class GlobalStoreSetting extends DataClass
    implements Insertable<GlobalStoreSetting> {
  /// Идентификатор записи
  final int id;

  /// Просмотрена ли обучающая карусель в кошельке
  final bool isWalletCarouselWatched;

  /// Запрашивалось ли гео
  final bool isGeoRequested;

  /// Запрашивалась ли модалка с предложением подписаться на уведомления
  final bool isNotificationsRequested;

  /// Просматривалась ли модалка с фото
  final bool isPhotoRequested;

  /// Просматривалась ли модалка с файлами
  final bool isFilesRequested;

  /// Первый ли это запуск приложения
  final bool isFirstRun;
  GlobalStoreSetting(
      {required this.id,
      required this.isWalletCarouselWatched,
      required this.isGeoRequested,
      required this.isNotificationsRequested,
      required this.isPhotoRequested,
      required this.isFilesRequested,
      required this.isFirstRun});
  factory GlobalStoreSetting.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return GlobalStoreSetting(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      isWalletCarouselWatched: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}is_wallet_carousel_watched'])!,
      isGeoRequested: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_geo_requested'])!,
      isNotificationsRequested: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}is_notifications_requested'])!,
      isPhotoRequested: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}is_photo_requested'])!,
      isFilesRequested: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}is_files_requested'])!,
      isFirstRun: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_first_run'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['is_wallet_carousel_watched'] = Variable<bool>(isWalletCarouselWatched);
    map['is_geo_requested'] = Variable<bool>(isGeoRequested);
    map['is_notifications_requested'] =
        Variable<bool>(isNotificationsRequested);
    map['is_photo_requested'] = Variable<bool>(isPhotoRequested);
    map['is_files_requested'] = Variable<bool>(isFilesRequested);
    map['is_first_run'] = Variable<bool>(isFirstRun);
    return map;
  }

  GlobalStoreSettingsCompanion toCompanion(bool nullToAbsent) {
    return GlobalStoreSettingsCompanion(
      id: Value(id),
      isWalletCarouselWatched: Value(isWalletCarouselWatched),
      isGeoRequested: Value(isGeoRequested),
      isNotificationsRequested: Value(isNotificationsRequested),
      isPhotoRequested: Value(isPhotoRequested),
      isFilesRequested: Value(isFilesRequested),
      isFirstRun: Value(isFirstRun),
    );
  }

  factory GlobalStoreSetting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return GlobalStoreSetting(
      id: serializer.fromJson<int>(json['id']),
      isWalletCarouselWatched:
          serializer.fromJson<bool>(json['isWalletCarouselWatched']),
      isGeoRequested: serializer.fromJson<bool>(json['isGeoRequested']),
      isNotificationsRequested:
          serializer.fromJson<bool>(json['isNotificationsRequested']),
      isPhotoRequested: serializer.fromJson<bool>(json['isPhotoRequested']),
      isFilesRequested: serializer.fromJson<bool>(json['isFilesRequested']),
      isFirstRun: serializer.fromJson<bool>(json['isFirstRun']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'isWalletCarouselWatched':
          serializer.toJson<bool>(isWalletCarouselWatched),
      'isGeoRequested': serializer.toJson<bool>(isGeoRequested),
      'isNotificationsRequested':
          serializer.toJson<bool>(isNotificationsRequested),
      'isPhotoRequested': serializer.toJson<bool>(isPhotoRequested),
      'isFilesRequested': serializer.toJson<bool>(isFilesRequested),
      'isFirstRun': serializer.toJson<bool>(isFirstRun),
    };
  }

  GlobalStoreSetting copyWith(
          {int? id,
          bool? isWalletCarouselWatched,
          bool? isGeoRequested,
          bool? isNotificationsRequested,
          bool? isPhotoRequested,
          bool? isFilesRequested,
          bool? isFirstRun}) =>
      GlobalStoreSetting(
        id: id ?? this.id,
        isWalletCarouselWatched:
            isWalletCarouselWatched ?? this.isWalletCarouselWatched,
        isGeoRequested: isGeoRequested ?? this.isGeoRequested,
        isNotificationsRequested:
            isNotificationsRequested ?? this.isNotificationsRequested,
        isPhotoRequested: isPhotoRequested ?? this.isPhotoRequested,
        isFilesRequested: isFilesRequested ?? this.isFilesRequested,
        isFirstRun: isFirstRun ?? this.isFirstRun,
      );
  @override
  String toString() {
    return (StringBuffer('GlobalStoreSetting(')
          ..write('id: $id, ')
          ..write('isWalletCarouselWatched: $isWalletCarouselWatched, ')
          ..write('isGeoRequested: $isGeoRequested, ')
          ..write('isNotificationsRequested: $isNotificationsRequested, ')
          ..write('isPhotoRequested: $isPhotoRequested, ')
          ..write('isFilesRequested: $isFilesRequested, ')
          ..write('isFirstRun: $isFirstRun')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          isWalletCarouselWatched.hashCode,
          $mrjc(
              isGeoRequested.hashCode,
              $mrjc(
                  isNotificationsRequested.hashCode,
                  $mrjc(
                      isPhotoRequested.hashCode,
                      $mrjc(
                          isFilesRequested.hashCode, isFirstRun.hashCode)))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GlobalStoreSetting &&
          other.id == this.id &&
          other.isWalletCarouselWatched == this.isWalletCarouselWatched &&
          other.isGeoRequested == this.isGeoRequested &&
          other.isNotificationsRequested == this.isNotificationsRequested &&
          other.isPhotoRequested == this.isPhotoRequested &&
          other.isFilesRequested == this.isFilesRequested &&
          other.isFirstRun == this.isFirstRun);
}

class GlobalStoreSettingsCompanion extends UpdateCompanion<GlobalStoreSetting> {
  final Value<int> id;
  final Value<bool> isWalletCarouselWatched;
  final Value<bool> isGeoRequested;
  final Value<bool> isNotificationsRequested;
  final Value<bool> isPhotoRequested;
  final Value<bool> isFilesRequested;
  final Value<bool> isFirstRun;
  const GlobalStoreSettingsCompanion({
    this.id = const Value.absent(),
    this.isWalletCarouselWatched = const Value.absent(),
    this.isGeoRequested = const Value.absent(),
    this.isNotificationsRequested = const Value.absent(),
    this.isPhotoRequested = const Value.absent(),
    this.isFilesRequested = const Value.absent(),
    this.isFirstRun = const Value.absent(),
  });
  GlobalStoreSettingsCompanion.insert({
    this.id = const Value.absent(),
    this.isWalletCarouselWatched = const Value.absent(),
    this.isGeoRequested = const Value.absent(),
    this.isNotificationsRequested = const Value.absent(),
    this.isPhotoRequested = const Value.absent(),
    this.isFilesRequested = const Value.absent(),
    this.isFirstRun = const Value.absent(),
  });
  static Insertable<GlobalStoreSetting> custom({
    Expression<int>? id,
    Expression<bool>? isWalletCarouselWatched,
    Expression<bool>? isGeoRequested,
    Expression<bool>? isNotificationsRequested,
    Expression<bool>? isPhotoRequested,
    Expression<bool>? isFilesRequested,
    Expression<bool>? isFirstRun,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isWalletCarouselWatched != null)
        'is_wallet_carousel_watched': isWalletCarouselWatched,
      if (isGeoRequested != null) 'is_geo_requested': isGeoRequested,
      if (isNotificationsRequested != null)
        'is_notifications_requested': isNotificationsRequested,
      if (isPhotoRequested != null) 'is_photo_requested': isPhotoRequested,
      if (isFilesRequested != null) 'is_files_requested': isFilesRequested,
      if (isFirstRun != null) 'is_first_run': isFirstRun,
    });
  }

  GlobalStoreSettingsCompanion copyWith(
      {Value<int>? id,
      Value<bool>? isWalletCarouselWatched,
      Value<bool>? isGeoRequested,
      Value<bool>? isNotificationsRequested,
      Value<bool>? isPhotoRequested,
      Value<bool>? isFilesRequested,
      Value<bool>? isFirstRun}) {
    return GlobalStoreSettingsCompanion(
      id: id ?? this.id,
      isWalletCarouselWatched:
          isWalletCarouselWatched ?? this.isWalletCarouselWatched,
      isGeoRequested: isGeoRequested ?? this.isGeoRequested,
      isNotificationsRequested:
          isNotificationsRequested ?? this.isNotificationsRequested,
      isPhotoRequested: isPhotoRequested ?? this.isPhotoRequested,
      isFilesRequested: isFilesRequested ?? this.isFilesRequested,
      isFirstRun: isFirstRun ?? this.isFirstRun,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isWalletCarouselWatched.present) {
      map['is_wallet_carousel_watched'] =
          Variable<bool>(isWalletCarouselWatched.value);
    }
    if (isGeoRequested.present) {
      map['is_geo_requested'] = Variable<bool>(isGeoRequested.value);
    }
    if (isNotificationsRequested.present) {
      map['is_notifications_requested'] =
          Variable<bool>(isNotificationsRequested.value);
    }
    if (isPhotoRequested.present) {
      map['is_photo_requested'] = Variable<bool>(isPhotoRequested.value);
    }
    if (isFilesRequested.present) {
      map['is_files_requested'] = Variable<bool>(isFilesRequested.value);
    }
    if (isFirstRun.present) {
      map['is_first_run'] = Variable<bool>(isFirstRun.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GlobalStoreSettingsCompanion(')
          ..write('id: $id, ')
          ..write('isWalletCarouselWatched: $isWalletCarouselWatched, ')
          ..write('isGeoRequested: $isGeoRequested, ')
          ..write('isNotificationsRequested: $isNotificationsRequested, ')
          ..write('isPhotoRequested: $isPhotoRequested, ')
          ..write('isFilesRequested: $isFilesRequested, ')
          ..write('isFirstRun: $isFirstRun')
          ..write(')'))
        .toString();
  }
}

class $GlobalStoreSettingsTable extends GlobalStoreSettings
    with TableInfo<$GlobalStoreSettingsTable, GlobalStoreSetting> {
  final GeneratedDatabase _db;
  final String? _alias;
  $GlobalStoreSettingsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _isWalletCarouselWatchedMeta =
      const VerificationMeta('isWalletCarouselWatched');
  late final GeneratedColumn<bool?> isWalletCarouselWatched =
      GeneratedColumn<bool?>('is_wallet_carousel_watched', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'CHECK (is_wallet_carousel_watched IN (0, 1))',
          defaultValue: const Constant(false));
  final VerificationMeta _isGeoRequestedMeta =
      const VerificationMeta('isGeoRequested');
  late final GeneratedColumn<bool?> isGeoRequested = GeneratedColumn<bool?>(
      'is_geo_requested', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_geo_requested IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _isNotificationsRequestedMeta =
      const VerificationMeta('isNotificationsRequested');
  late final GeneratedColumn<bool?> isNotificationsRequested =
      GeneratedColumn<bool?>('is_notifications_requested', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'CHECK (is_notifications_requested IN (0, 1))',
          defaultValue: const Constant(false));
  final VerificationMeta _isPhotoRequestedMeta =
      const VerificationMeta('isPhotoRequested');
  late final GeneratedColumn<bool?> isPhotoRequested = GeneratedColumn<bool?>(
      'is_photo_requested', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_photo_requested IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _isFilesRequestedMeta =
      const VerificationMeta('isFilesRequested');
  late final GeneratedColumn<bool?> isFilesRequested = GeneratedColumn<bool?>(
      'is_files_requested', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_files_requested IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _isFirstRunMeta = const VerificationMeta('isFirstRun');
  late final GeneratedColumn<bool?> isFirstRun = GeneratedColumn<bool?>(
      'is_first_run', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_first_run IN (0, 1))',
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        isWalletCarouselWatched,
        isGeoRequested,
        isNotificationsRequested,
        isPhotoRequested,
        isFilesRequested,
        isFirstRun
      ];
  @override
  String get aliasedName => _alias ?? 'global_store_settings';
  @override
  String get actualTableName => 'global_store_settings';
  @override
  VerificationContext validateIntegrity(Insertable<GlobalStoreSetting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_wallet_carousel_watched')) {
      context.handle(
          _isWalletCarouselWatchedMeta,
          isWalletCarouselWatched.isAcceptableOrUnknown(
              data['is_wallet_carousel_watched']!,
              _isWalletCarouselWatchedMeta));
    }
    if (data.containsKey('is_geo_requested')) {
      context.handle(
          _isGeoRequestedMeta,
          isGeoRequested.isAcceptableOrUnknown(
              data['is_geo_requested']!, _isGeoRequestedMeta));
    }
    if (data.containsKey('is_notifications_requested')) {
      context.handle(
          _isNotificationsRequestedMeta,
          isNotificationsRequested.isAcceptableOrUnknown(
              data['is_notifications_requested']!,
              _isNotificationsRequestedMeta));
    }
    if (data.containsKey('is_photo_requested')) {
      context.handle(
          _isPhotoRequestedMeta,
          isPhotoRequested.isAcceptableOrUnknown(
              data['is_photo_requested']!, _isPhotoRequestedMeta));
    }
    if (data.containsKey('is_files_requested')) {
      context.handle(
          _isFilesRequestedMeta,
          isFilesRequested.isAcceptableOrUnknown(
              data['is_files_requested']!, _isFilesRequestedMeta));
    }
    if (data.containsKey('is_first_run')) {
      context.handle(
          _isFirstRunMeta,
          isFirstRun.isAcceptableOrUnknown(
              data['is_first_run']!, _isFirstRunMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GlobalStoreSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    return GlobalStoreSetting.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $GlobalStoreSettingsTable createAlias(String alias) {
    return $GlobalStoreSettingsTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UserSettingsRecordsTable userSettingsRecords =
      $UserSettingsRecordsTable(this);
  late final $ClientSearchResponseRecordsTable clientSearchResponseRecords =
      $ClientSearchResponseRecordsTable(this);
  late final $GlobalStoreSettingsTable globalStoreSettings =
      $GlobalStoreSettingsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userSettingsRecords, clientSearchResponseRecords, globalStoreSettings];
}
