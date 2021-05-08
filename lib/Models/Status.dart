import 'package:estaleiro/Models/Project.dart';
import 'Invoice.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class Status {
  int id;
  String name;
  List<Project> projects;
  List<Invoice> invoices;
  DateTime createdAt;
  DateTime updatedAt;

  Status({this.id,
    this.name,
    this.projects,
    this.invoices,
    this.createdAt,
    this.updatedAt
  });
  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}
