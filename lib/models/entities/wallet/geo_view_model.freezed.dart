// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeoViewModelTearOff {
  const _$GeoViewModelTearOff();

  Geo call(int? placeId, double? longitude, double? latitude) {
    return Geo(
      placeId,
      longitude,
      latitude,
    );
  }
}

/// @nodoc
const $GeoViewModel = _$GeoViewModelTearOff();

/// @nodoc
mixin _$GeoViewModel {
  int? get placeId => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeoViewModelCopyWith<GeoViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoViewModelCopyWith<$Res> {
  factory $GeoViewModelCopyWith(
          GeoViewModel value, $Res Function(GeoViewModel) then) =
      _$GeoViewModelCopyWithImpl<$Res>;
  $Res call({int? placeId, double? longitude, double? latitude});
}

/// @nodoc
class _$GeoViewModelCopyWithImpl<$Res> implements $GeoViewModelCopyWith<$Res> {
  _$GeoViewModelCopyWithImpl(this._value, this._then);

  final GeoViewModel _value;
  // ignore: unused_field
  final $Res Function(GeoViewModel) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class $GeoCopyWith<$Res> implements $GeoViewModelCopyWith<$Res> {
  factory $GeoCopyWith(Geo value, $Res Function(Geo) then) =
      _$GeoCopyWithImpl<$Res>;
  @override
  $Res call({int? placeId, double? longitude, double? latitude});
}

/// @nodoc
class _$GeoCopyWithImpl<$Res> extends _$GeoViewModelCopyWithImpl<$Res>
    implements $GeoCopyWith<$Res> {
  _$GeoCopyWithImpl(Geo _value, $Res Function(Geo) _then)
      : super(_value, (v) => _then(v as Geo));

  @override
  Geo get _value => super._value as Geo;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(Geo(
      placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$Geo implements Geo {
  const _$Geo(this.placeId, this.longitude, this.latitude);

  @override
  final int? placeId;
  @override
  final double? longitude;
  @override
  final double? latitude;

  @override
  String toString() {
    return 'GeoViewModel(placeId: $placeId, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Geo &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude);

  @JsonKey(ignore: true)
  @override
  $GeoCopyWith<Geo> get copyWith => _$GeoCopyWithImpl<Geo>(this, _$identity);
}

abstract class Geo implements GeoViewModel {
  const factory Geo(int? placeId, double? longitude, double? latitude) = _$Geo;

  @override
  int? get placeId => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GeoCopyWith<Geo> get copyWith => throw _privateConstructorUsedError;
}
