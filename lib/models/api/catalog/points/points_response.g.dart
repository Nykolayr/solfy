// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointsResp _$$PointsRespFromJson(Map<String, dynamic> json) => _$PointsResp(
      (json['points'] as List<dynamic>?)
          ?.map((e) =>
              PointsPointItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PointsRespToJson(_$PointsResp instance) =>
    <String, dynamic>{
      'points': instance.points,
    };
