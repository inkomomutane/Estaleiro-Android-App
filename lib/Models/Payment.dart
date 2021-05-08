import 'package:estaleiro/Models/Invoice.dart';

import 'CashInflowOutflow.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Payment.g.dart';

@JsonSerializable()
class Payment {
  int? id;
  String? name;
  @JsonKey(name: 'cash_inflow_outflows')
  List<CashInflowOutflow>? cashInflowOutflows;
  List<Invoice>? invoices;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Payment(
      {this.id,
        this.name,
        this.cashInflowOutflows,
        this.invoices,
        this.createdAt,
        this.updatedAt});
  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}
