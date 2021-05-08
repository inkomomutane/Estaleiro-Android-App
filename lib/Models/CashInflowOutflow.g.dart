// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CashInflowOutflow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashInflowOutflow _$CashInflowOutflowFromJson(Map<String, dynamic> json) {
  return CashInflowOutflow(
    id: json['id'] as int?,
    payment: json['payment'] == null
        ? null
        : Payment.fromJson(json['payment'] as Map<String, dynamic>),
    description: json['description'] as String?,
    inflowOutflowType: json['inflow_outflow_type'] == null
        ? null
        : InflowOutflowType.fromJson(
            json['inflow_outflow_type'] as Map<String, dynamic>),
    amount: (json['amount'] as num?)?.toDouble(),
    invoice: json['invoice'] == null
        ? null
        : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$CashInflowOutflowToJson(CashInflowOutflow instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment': instance.payment,
      'description': instance.description,
      'inflow_outflow_type': instance.inflowOutflowType,
      'amount': instance.amount,
      'invoice': instance.invoice,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
