// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DataModelA.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubwayModel _$$_SubwayModelFromJson(Map<String, dynamic> json) =>
    _$_SubwayModel(
      name: json['name'] as String,
      engname: json['engname'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      line: (json['line'] as List<dynamic>).map((e) => e as String).toList(),
      km: json['km'] as num? ?? 0.0,
    );

Map<String, dynamic> _$$_SubwayModelToJson(_$_SubwayModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'engname': instance.engname,
      'lat': instance.lat,
      'lng': instance.lng,
      'line': instance.line,
      'km': instance.km,
    };
