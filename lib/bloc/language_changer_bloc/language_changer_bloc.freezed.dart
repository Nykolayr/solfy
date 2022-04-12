// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'language_changer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LanguageChangerStateTearOff {
  const _$LanguageChangerStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LanguageChanged languageChanged(String newLanguage) {
    return LanguageChanged(
      newLanguage,
    );
  }
}

/// @nodoc
const $LanguageChangerState = _$LanguageChangerStateTearOff();

/// @nodoc
mixin _$LanguageChangerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String newLanguage) languageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String newLanguage)? languageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String newLanguage)? languageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LanguageChanged value) languageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LanguageChanged value)? languageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LanguageChanged value)? languageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageChangerStateCopyWith<$Res> {
  factory $LanguageChangerStateCopyWith(LanguageChangerState value,
          $Res Function(LanguageChangerState) then) =
      _$LanguageChangerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LanguageChangerStateCopyWithImpl<$Res>
    implements $LanguageChangerStateCopyWith<$Res> {
  _$LanguageChangerStateCopyWithImpl(this._value, this._then);

  final LanguageChangerState _value;
  // ignore: unused_field
  final $Res Function(LanguageChangerState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$LanguageChangerStateCopyWithImpl<$Res>
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
    return 'LanguageChangerState.initial()';
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
    required TResult Function(String newLanguage) languageChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String newLanguage)? languageChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String newLanguage)? languageChanged,
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
    required TResult Function(LanguageChanged value) languageChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LanguageChanged value)? languageChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LanguageChanged value)? languageChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LanguageChangerState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LanguageChangedCopyWith<$Res> {
  factory $LanguageChangedCopyWith(
          LanguageChanged value, $Res Function(LanguageChanged) then) =
      _$LanguageChangedCopyWithImpl<$Res>;
  $Res call({String newLanguage});
}

/// @nodoc
class _$LanguageChangedCopyWithImpl<$Res>
    extends _$LanguageChangerStateCopyWithImpl<$Res>
    implements $LanguageChangedCopyWith<$Res> {
  _$LanguageChangedCopyWithImpl(
      LanguageChanged _value, $Res Function(LanguageChanged) _then)
      : super(_value, (v) => _then(v as LanguageChanged));

  @override
  LanguageChanged get _value => super._value as LanguageChanged;

  @override
  $Res call({
    Object? newLanguage = freezed,
  }) {
    return _then(LanguageChanged(
      newLanguage == freezed
          ? _value.newLanguage
          : newLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LanguageChanged implements LanguageChanged {
  const _$LanguageChanged(this.newLanguage);

  @override
  final String newLanguage;

  @override
  String toString() {
    return 'LanguageChangerState.languageChanged(newLanguage: $newLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LanguageChanged &&
            (identical(other.newLanguage, newLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.newLanguage, newLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newLanguage);

  @JsonKey(ignore: true)
  @override
  $LanguageChangedCopyWith<LanguageChanged> get copyWith =>
      _$LanguageChangedCopyWithImpl<LanguageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String newLanguage) languageChanged,
  }) {
    return languageChanged(newLanguage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String newLanguage)? languageChanged,
  }) {
    return languageChanged?.call(newLanguage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String newLanguage)? languageChanged,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(newLanguage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LanguageChanged value) languageChanged,
  }) {
    return languageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LanguageChanged value)? languageChanged,
  }) {
    return languageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LanguageChanged value)? languageChanged,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(this);
    }
    return orElse();
  }
}

abstract class LanguageChanged implements LanguageChangerState {
  const factory LanguageChanged(String newLanguage) = _$LanguageChanged;

  String get newLanguage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageChangedCopyWith<LanguageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LanguageChangerEventTearOff {
  const _$LanguageChangerEventTearOff();

  ChangeLanguage changeLanguage(String newLanguage) {
    return ChangeLanguage(
      newLanguage,
    );
  }
}

/// @nodoc
const $LanguageChangerEvent = _$LanguageChangerEventTearOff();

/// @nodoc
mixin _$LanguageChangerEvent {
  String get newLanguage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newLanguage) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newLanguage)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newLanguage)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeLanguage value)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageChangerEventCopyWith<LanguageChangerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageChangerEventCopyWith<$Res> {
  factory $LanguageChangerEventCopyWith(LanguageChangerEvent value,
          $Res Function(LanguageChangerEvent) then) =
      _$LanguageChangerEventCopyWithImpl<$Res>;
  $Res call({String newLanguage});
}

/// @nodoc
class _$LanguageChangerEventCopyWithImpl<$Res>
    implements $LanguageChangerEventCopyWith<$Res> {
  _$LanguageChangerEventCopyWithImpl(this._value, this._then);

  final LanguageChangerEvent _value;
  // ignore: unused_field
  final $Res Function(LanguageChangerEvent) _then;

  @override
  $Res call({
    Object? newLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      newLanguage: newLanguage == freezed
          ? _value.newLanguage
          : newLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $ChangeLanguageCopyWith<$Res>
    implements $LanguageChangerEventCopyWith<$Res> {
  factory $ChangeLanguageCopyWith(
          ChangeLanguage value, $Res Function(ChangeLanguage) then) =
      _$ChangeLanguageCopyWithImpl<$Res>;
  @override
  $Res call({String newLanguage});
}

/// @nodoc
class _$ChangeLanguageCopyWithImpl<$Res>
    extends _$LanguageChangerEventCopyWithImpl<$Res>
    implements $ChangeLanguageCopyWith<$Res> {
  _$ChangeLanguageCopyWithImpl(
      ChangeLanguage _value, $Res Function(ChangeLanguage) _then)
      : super(_value, (v) => _then(v as ChangeLanguage));

  @override
  ChangeLanguage get _value => super._value as ChangeLanguage;

  @override
  $Res call({
    Object? newLanguage = freezed,
  }) {
    return _then(ChangeLanguage(
      newLanguage == freezed
          ? _value.newLanguage
          : newLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeLanguage implements ChangeLanguage {
  const _$ChangeLanguage(this.newLanguage);

  @override
  final String newLanguage;

  @override
  String toString() {
    return 'LanguageChangerEvent.changeLanguage(newLanguage: $newLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeLanguage &&
            (identical(other.newLanguage, newLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.newLanguage, newLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newLanguage);

  @JsonKey(ignore: true)
  @override
  $ChangeLanguageCopyWith<ChangeLanguage> get copyWith =>
      _$ChangeLanguageCopyWithImpl<ChangeLanguage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newLanguage) changeLanguage,
  }) {
    return changeLanguage(newLanguage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newLanguage)? changeLanguage,
  }) {
    return changeLanguage?.call(newLanguage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newLanguage)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(newLanguage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeLanguage value)? changeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeLanguage implements LanguageChangerEvent {
  const factory ChangeLanguage(String newLanguage) = _$ChangeLanguage;

  @override
  String get newLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ChangeLanguageCopyWith<ChangeLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}
