// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Cashier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cashier _$CashierFromJson(Map<String, dynamic> json) {
  return Cashier(
    id: json['id'] as int?,
    openedAt: json['opened_at'] == null
        ? null
        : DateTime.parse(json['opened_at'] as String),
    closedAt: json['closed_at'] == null
        ? null
        : DateTime.parse(json['closed_at'] as String),
    initialBalance: (json['initial_balance'] as num?)?.toDouble(),
    finalBalance: (json['final_balance'] as num?)?.toDouble(),
    cashierStatus: json['cashier_status'] as bool?,
    employee: json['employee'] == null
        ? null
        : User.fromJson(json['employee'] as Map<String, dynamic>),
    status: json['status'] as bool?,
    observation: json['observation'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$CashierToJson(Cashier instance) => <String, dynamic>{
      'id': instance.id,
      'opened_at': instance.openedAt?.toIso8601String(),
      'closed_at': instance.closedAt?.toIso8601String(),
      'initial_balance': instance.initialBalance,
      'final_balance': instance.finalBalance,
      'cashier_status': instance.cashierStatus,
      'employee': instance.employee,
      'status': instance.status,
      'observation': instance.observation,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
