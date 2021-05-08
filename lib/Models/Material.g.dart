// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Material _$MaterialFromJson(Map<String, dynamic> json) {
  return Material(
    name: json['name'] as String?,
    quantity: (json['quantity'] as num?)?.toDouble(),
    buyPrice: (json['buy_price'] as num?)?.toDouble(),
    description: json['description'] as String?,
    shortDescription: json['short_description'] as String?,
    internMaterial: json['intern_material'] as bool?,
    createdBy: json['created_by'] as String?,
    updatedBy: json['updated_by'] as String?,
    measure: json['measure'] == null
        ? null
        : Measure.fromJson(json['measure'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>),
    measures: (json['measures'] as List<dynamic>?)
        ?.map((e) => Measure.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  )..id = json['id'] as int?;
}

Map<String, dynamic> _$MaterialToJson(Material instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity': instance.quantity,
      'buy_price': instance.buyPrice,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'intern_material': instance.internMaterial,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'measure': instance.measure,
      'category': instance.category,
      'measures': instance.measures,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
