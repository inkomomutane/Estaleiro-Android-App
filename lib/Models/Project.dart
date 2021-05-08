import 'package:estaleiro/Models/User.dart';
import 'Status.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Project.g.dart';

@JsonSerializable()
class Project {
  int? id;
  String? name;
  @JsonKey(name: 'deposited_amount')
  double? depositedAmount;
  @JsonKey(name: 'available_amount')
  double? availableAmount;
  @JsonKey(name: 'missing_amount')
  double? missingAmount;
  @JsonKey(name: 'progress_percent')
  double? progressPercent;
  @JsonKey(name: 'total_materials')
  int? totalMaterials;
  @JsonKey(name: 'total_paid')
  double? totalPaid;
  User? cliente;
  Status? status;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Project(
      {this.id,
        this.name,
        this.depositedAmount,
        this.availableAmount,
        this.missingAmount,
        this.progressPercent,
        this.totalMaterials,
        this.totalPaid,
        this.cliente,
        this.status,
        this.createdAt,
        this.updatedAt
      });
  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

