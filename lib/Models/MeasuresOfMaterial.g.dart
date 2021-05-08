// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MeasuresOfMaterial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasuresOfMaterial _$MeasuresOfMaterialFromJson(Map<String, dynamic> json) {
  return MeasuresOfMaterial(
    id: json['id'] as int?,
    measures: json['measures'] == null
        ? null
        : Measure.fromJson(json['measures'] as Map<String, dynamic>),
    materials: json['materials'] == null
        ? null
        : Material.fromJson(json['materials'] as Map<String, dynamic>),
    price: json['price'] as int?,
    description: json['description'] as String?,
    quantityByBaseUnity: (json['quantity_by_base_unity'] as num?)?.toDouble(),
    profit: (json['profit'] as num?)?.toDouble(),
    discount: (json['discount'] as num?)?.toDouble(),
    orders: (json['orders'] as List<dynamic>?)
        ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$MeasuresOfMaterialToJson(MeasuresOfMaterial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'measures': instance.measures,
      'materials': instance.materials,
      'price': instance.price,
      'description': instance.description,
      'quantity_by_base_unity': instance.quantityByBaseUnity,
      'profit': instance.profit,
      'discount': instance.discount,
      'orders': instance.orders,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
