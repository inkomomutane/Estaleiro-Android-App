// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return Payment(
    id: json['id'] as int?,
    name: json['name'] as String?,
    cashInflowOutflows: (json['cash_inflow_outflows'] as List<dynamic>?)
        ?.map((e) => CashInflowOutflow.fromJson(e as Map<String, dynamic>))
        .toList(),
    invoices: (json['invoices'] as List<dynamic>?)
        ?.map((e) => Invoice.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cash_inflow_outflows': instance.cashInflowOutflows,
      'invoices': instance.invoices,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
