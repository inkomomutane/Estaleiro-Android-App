// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return Invoice(
    id: json['id'] as int?,
    depreciatedAt: json['depreciated_at'] as String?,
    cliente: json['cliente'] == null
        ? null
        : User.fromJson(json['cliente'] as Map<String, dynamic>),
    totalPrice: (json['total_price'] as num?)?.toDouble(),
    totalMaterials: json['total_materials'] as int?,
    processedBy: json['processed_by'] as int?,
    clientName: json['client_name'] as String?,
    orderCode: json['order_code'] as String?,
    status: json['status'] == null
        ? null
        : Status.fromJson(json['status'] as Map<String, dynamic>),
    payment: json['payment'] == null
        ? null
        : Payment.fromJson(json['payment'] as Map<String, dynamic>),
    cashInflowOutflows: (json['cash_inflow_outflows'] as List<dynamic>?)
        ?.map((e) => CashInflowOutflow.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'id': instance.id,
      'depreciated_at': instance.depreciatedAt,
      'cliente': instance.cliente,
      'total_price': instance.totalPrice,
      'total_materials': instance.totalMaterials,
      'processed_by': instance.processedBy,
      'client_name': instance.clientName,
      'order_code': instance.orderCode,
      'status': instance.status,
      'payment': instance.payment,
      'cash_inflow_outflows': instance.cashInflowOutflows,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
