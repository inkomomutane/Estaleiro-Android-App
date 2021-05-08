import 'package:estaleiro/Models/User.dart';
import 'Status.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class Project {
  int id;
  String name;
  double depositedAmount;
  double availableAmount;
  double missingAmount;
  double progressPercent;
  int totalMaterials;
  double totalPaid;
  User cliente;
  Status status;
  DateTime createdAt;
  DateTime updatedAt;

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
  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}

