// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    id: json['id'] as int?,
    orderCode: json['order_code'] as String?,
    discounted: json['discounted'] as bool?,
    material: json['material'] as int?,
    quantity: json['quantity'] as int?,
    vatIncluded: json['vat_included'] as bool?,
    measuresOfMaterial: json['measures_of_material'] == null
        ? null
        : MeasuresOfMaterial.fromJson(
            json['measures_of_material'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'order_code': instance.orderCode,
      'discounted': instance.discounted,
      'material': instance.material,
      'quantity': instance.quantity,
      'vat_included': instance.vatIncluded,
      'measures_of_material': instance.measuresOfMaterial,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
