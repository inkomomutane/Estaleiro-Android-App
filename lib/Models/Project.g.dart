// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return Project(
    id: json['id'] as int?,
    name: json['name'] as String?,
    depositedAmount: (json['deposited_amount'] as num?)?.toDouble(),
    availableAmount: (json['available_amount'] as num?)?.toDouble(),
    missingAmount: (json['missing_amount'] as num?)?.toDouble(),
    progressPercent: (json['progress_percent'] as num?)?.toDouble(),
    totalMaterials: json['total_materials'] as int?,
    totalPaid: (json['total_paid'] as num?)?.toDouble(),
    cliente: json['cliente'] == null
        ? null
        : User.fromJson(json['cliente'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : Status.fromJson(json['status'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'deposited_amount': instance.depositedAmount,
      'available_amount': instance.availableAmount,
      'missing_amount': instance.missingAmount,
      'progress_percent': instance.progressPercent,
      'total_materials': instance.totalMaterials,
      'total_paid': instance.totalPaid,
      'cliente': instance.cliente,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
