// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  Initial initial() {
    return const Initial();
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SettingsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  UpdateSettings updateSettings() {
    return const UpdateSettings();
  }

  SetNewCity setNewCity(int id) {
    return SetNewCity(
      id,
    );
  }

  SetNewLocale setNewLocale(String locale) {
    return SetNewLocale(
      locale,
    );
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateSettings,
    required TResult Function(int id) setNewCity,
    required TResult Function(String locale) setNewLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateSettings,
    TResult Function(int id)? setNewCity,
    TResult Function(String locale)? setNewLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateSettings,
    TResult Function(int id)? setNewCity,
    TResult Function(String locale)? setNewLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(SetNewCity value) setNewCity,
    required TResult Function(SetNewLocale value) setNewLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(SetNewCity value)? setNewCity,
    TResult Function(SetNewLocale value)? setNewLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(SetNewCity value)? setNewCity,
    TResult Function(SetNewLocale value)? setNewLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class $UpdateSettingsCopyWith<$Res> {
  factory $UpdateSettingsCopyWith(
          UpdateSettings value, $Res Function(UpdateSettings) then) =
      _$UpdateSettingsCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSettingsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $UpdateSettingsCopyWith<$Res> {
  _$UpdateSettingsCopyWithImpl(
      UpdateSettings _value, $Res Function(UpdateSettings) _then)
      : super(_value, (v) => _then(v as UpdateSettings));

  @override
  UpdateSettings get _value => super._value as UpdateSettings;
}

/// @nodoc

class _$UpdateSettings implements UpdateSettings {
  const _$UpdateSettings();

  @override
  String toString() {
    return 'SettingsEvent.updateSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateSettings,
    required TResult Function(int id) setNewCity,
    required TResult Function(String locale) setNewLocale,
  }) {
    return updateSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateSettings,
    TResult Function(int id)? setNewCity,
    TResult Function(String locale)? setNewLocale,
  }) {
    return updateSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateSettings,
    TResult Function(int id)? setNewCity,
    TResult Function(String locale)? setNewLocale,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(SetNewCity value) setNewCity,
    required TResult Function(SetNewLocale value) setNewLocale,
  }) {
    return updateSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(SetNewCity value)? setNewCity,
    TResult Function(SetNewLocale value)? setNewLocale,
  }) {
    return updateSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(SetNewCity value)? setNewCity,
    TResult Function(SetNewLocale value)? setNewLocale,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(this);
    }
    return orElse();
  }
}

abstract class UpdateSettings implements SettingsEvent {
  const factory UpdateSettings() = _$UpdateSettings;
}

/// @nodoc
abstract class $SetNewCityCopyWith<$Res> {
  factory $SetNewCityCopyWith(
          SetNewCity value, $Res Function(SetNewCity) then) =
      _$SetNewCityCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$SetNewCityCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements $SetNewCityCopyWith<$Res> {
  _$SetNewCityCopyWithImpl(SetNewCity _value, $Res Function(SetNewCity) _then)
      : super(_value, (v) => _then(v as SetNewCity));

  @override
  SetNewCity get _value => super._value as SetNewCity;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(SetNewCity(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetNewCity implements SetNewCity {
  const _$SetNewCity(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SettingsEvent.setNewCity(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetNewCity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $SetNewCityCopyWith<SetNewCity> get copyWith =>
      _$SetNewCityCopyWithImpl<SetNewCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateSettings,
    required TResult Function(int id) setNewCity,
    required TResult Function(String locale) setNewLocale,
  }) {
    return setNewCity(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateSettings,
    TResult Function(int id)? setNewCity,
    TResult Function(String locale)? setNewLocale,
  }) {
    return setNewCity?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateSettings,
    TResult Function(int id)? setNewCity,
    TResult Function(String locale)? setNewLocale,
    required TResult orElse(),
  }) {
    if (setNewCity != null) {
      return setNewCity(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(SetNewCity value) setNewCity,
    required TResult Function(SetNewLocale value) setNewLocale,
  }) {
    return setNewCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(SetNewCity value)? setNewCity,
    TResult Function(SetNewLocale value)? setNewLocale,
  }) {
    return setNewCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(SetNewCity value)? setNewCity,
    TResult Function(SetNewLocale value)? setNewLocale,
    required TResult orElse(),
  }) {
    if (setNewCity != null) {
      return setNewCity(this);
    }
    return orElse();
  }
}

abstract class SetNewCity implements SettingsEvent {
  const factory SetNewCity(int id) = _$SetNewCity;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetNewCityCopyWith<SetNewCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetNewLocaleCopyWith<$Res> {
  factory $SetNewLocaleCopyWith(
          SetNewLocale value, $Res Function(SetNewLocale) then) =
      _$SetNewLocaleCopyWithImpl<$Res>;
  $Res call({String locale});
}

/// @nodoc
class _$SetNewLocaleCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements $SetNewLocaleCopyWith<$Res> {
  _$SetNewLocaleCopyWithImpl(
      SetNewLocale _value, $Res Function(SetNewLocale) _then)
      : super(_value, (v) => _then(v as SetNewLocale));

  @override
  SetNewLocale get _value => super._value as SetNewLocale;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(SetNewLocale(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetNewLocale implements SetNewLocale {
  const _$SetNewLocale(this.locale);

  @override
  final String locale;

  @override
  String toString() {
    return 'SettingsEvent.setNewLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetNewLocale &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  $SetNewLocaleCopyWith<SetNewLocale> get copyWith =>
      _$SetNewLocaleCopyWithImpl<SetNewLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateSettings,
    required TResult Function(int id) setNewCity,
    required TResult Function(String locale) setNewLocale,
  }) {
    return setNewLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateSettings,
    TResult Function(int id)? setNewCity,
    TResult Function(String locale)? setNewLocale,
  }) {
    return setNewLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateSettings,
    TResult Function(int id)? setNewCity,
    TResult Function(String locale)? setNewLocale,
    required TResult orElse(),
  }) {
    if (setNewLocale != null) {
      return setNewLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateSettings value) updateSettings,
    required TResult Function(SetNewCity value) setNewCity,
    required TResult Function(SetNewLocale value) setNewLocale,
  }) {
    return setNewLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(SetNewCity value)? setNewCity,
    TResult Function(SetNewLocale value)? setNewLocale,
  }) {
    return setNewLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateSettings value)? updateSettings,
    TResult Function(SetNewCity value)? setNewCity,
    TResult Function(SetNewLocale value)? setNewLocale,
    required TResult orElse(),
  }) {
    if (setNewLocale != null) {
      return setNewLocale(this);
    }
    return orElse();
  }
}

abstract class SetNewLocale implements SettingsEvent {
  const factory SetNewLocale(String locale) = _$SetNewLocale;

  String get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetNewLocaleCopyWith<SetNewLocale> get copyWith =>
      throw _privateConstructorUsedError;
}
