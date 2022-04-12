// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_info_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatalogInfoViewModelTearOff {
  const _$CatalogInfoViewModelTearOff();

  Info call(
      @JsonKey(name: "total") String? total,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle) {
    return Info(
      total,
      title,
      subtitle,
    );
  }
}

/// @nodoc
const $CatalogInfoViewModel = _$CatalogInfoViewModelTearOff();

/// @nodoc
mixin _$CatalogInfoViewModel {
  /// Общее количество магазинов
  @JsonKey(name: "total")
  String? get total => throw _privateConstructorUsedError;

  /// Название региона
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Название города (подрегиона)
  @JsonKey(name: "subtitle")
  String? get subtitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogInfoViewModelCopyWith<CatalogInfoViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogInfoViewModelCopyWith<$Res> {
  factory $CatalogInfoViewModelCopyWith(CatalogInfoViewModel value,
          $Res Function(CatalogInfoViewModel) then) =
      _$CatalogInfoViewModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "total") String? total,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle});
}

/// @nodoc
class _$CatalogInfoViewModelCopyWithImpl<$Res>
    implements $CatalogInfoViewModelCopyWith<$Res> {
  _$CatalogInfoViewModelCopyWithImpl(this._value, this._then);

  final CatalogInfoViewModel _value;
  // ignore: unused_field
  final $Res Function(CatalogInfoViewModel) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $InfoCopyWith<$Res>
    implements $CatalogInfoViewModelCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "total") String? total,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res> extends _$CatalogInfoViewModelCopyWithImpl<$Res>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(Info _value, $Res Function(Info) _then)
      : super(_value, (v) => _then(v as Info));

  @override
  Info get _value => super._value as Info;

  @override
  $Res call({
    Object? total = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(Info(
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Info implements Info {
  const _$Info(
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "subtitle") this.subtitle);

  @override

  /// Общее количество магазинов
  @JsonKey(name: "total")
  final String? total;
  @override

  /// Название региона
  @JsonKey(name: "title")
  final String? title;
  @override

  /// Название города (подрегиона)
  @JsonKey(name: "subtitle")
  final String? subtitle;

  @override
  String toString() {
    return 'CatalogInfoViewModel(total: $total, title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Info &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle);

  @JsonKey(ignore: true)
  @override
  $InfoCopyWith<Info> get copyWith =>
      _$InfoCopyWithImpl<Info>(this, _$identity);
}

abstract class Info implements CatalogInfoViewModel {
  const factory Info(
      @JsonKey(name: "total") String? total,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle) = _$Info;

  @override

  /// Общее количество магазинов
  @JsonKey(name: "total")
  String? get total => throw _privateConstructorUsedError;
  @override

  /// Название региона
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override

  /// Название города (подрегиона)
  @JsonKey(name: "subtitle")
  String? get subtitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}
