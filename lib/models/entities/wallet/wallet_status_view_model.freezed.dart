// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_status_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletStatusViewModelTearOff {
  const _$WalletStatusViewModelTearOff();

  WalletStatus call(
      @JsonKey(name: "status") String status,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description) {
    return WalletStatus(
      status,
      title,
      description,
    );
  }
}

/// @nodoc
const $WalletStatusViewModel = _$WalletStatusViewModelTearOff();

/// @nodoc
mixin _$WalletStatusViewModel {
  /// Статус кошелька
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;

  /// Заголовок
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  /// Описание
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletStatusViewModelCopyWith<WalletStatusViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStatusViewModelCopyWith<$Res> {
  factory $WalletStatusViewModelCopyWith(WalletStatusViewModel value,
          $Res Function(WalletStatusViewModel) then) =
      _$WalletStatusViewModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$WalletStatusViewModelCopyWithImpl<$Res>
    implements $WalletStatusViewModelCopyWith<$Res> {
  _$WalletStatusViewModelCopyWithImpl(this._value, this._then);

  final WalletStatusViewModel _value;
  // ignore: unused_field
  final $Res Function(WalletStatusViewModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $WalletStatusCopyWith<$Res>
    implements $WalletStatusViewModelCopyWith<$Res> {
  factory $WalletStatusCopyWith(
          WalletStatus value, $Res Function(WalletStatus) then) =
      _$WalletStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$WalletStatusCopyWithImpl<$Res>
    extends _$WalletStatusViewModelCopyWithImpl<$Res>
    implements $WalletStatusCopyWith<$Res> {
  _$WalletStatusCopyWithImpl(
      WalletStatus _value, $Res Function(WalletStatus) _then)
      : super(_value, (v) => _then(v as WalletStatus));

  @override
  WalletStatus get _value => super._value as WalletStatus;

  @override
  $Res call({
    Object? status = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(WalletStatus(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletStatus implements WalletStatus {
  const _$WalletStatus(
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description);

  @override

  /// Статус кошелька
  @JsonKey(name: "status")
  final String status;
  @override

  /// Заголовок
  @JsonKey(name: "title")
  final String title;
  @override

  /// Описание
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'WalletStatusViewModel(status: $status, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WalletStatus &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $WalletStatusCopyWith<WalletStatus> get copyWith =>
      _$WalletStatusCopyWithImpl<WalletStatus>(this, _$identity);
}

abstract class WalletStatus implements WalletStatusViewModel {
  const factory WalletStatus(
      @JsonKey(name: "status") String status,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description) = _$WalletStatus;

  @override

  /// Статус кошелька
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @override

  /// Заголовок
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @override

  /// Описание
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $WalletStatusCopyWith<WalletStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
