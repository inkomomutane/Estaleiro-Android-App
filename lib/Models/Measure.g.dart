// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Measure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Measure _$MeasureFromJson(Map<String, dynamic> json) {
  return Measure(
    id: json['id'] as int?,
    name: json['name'] as String?,
    materials: (json['materials'] as List<dynamic>?)
        ?.map((e) => Material.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$MeasureToJson(Measure instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'materials': instance.materials,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
