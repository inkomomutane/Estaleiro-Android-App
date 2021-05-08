import 'package:estaleiro/Models/Invoice.dart';

import 'CashInflowOutflow.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class Payment {
  int id;
  String name;
  List<CashInflowOutflow> cashInflowOutflows;
  List<Invoice> invoices;
  DateTime createdAt;
  DateTime updatedAt;

  Payment(
      {this.id,
        this.name,
        this.cashInflowOutflows,
        this.invoices,
        this.createdAt,
        this.updatedAt});
  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}
