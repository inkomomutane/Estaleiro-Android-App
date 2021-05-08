import 'InflowOutflowType.dart';
import 'Invoice.dart';
import 'Payment.dart';

import 'package:json_annotation/json_annotation.dart';
part 'CashInflowOutflow.g.dart';

@JsonSerializable()
class CashInflowOutflow {
  int? id;
  Payment? payment;
  String? description;
  @JsonKey(name: 'inflow_outflow_type')
  InflowOutflowType? inflowOutflowType;
  double? amount;
  Invoice? invoice;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  CashInflowOutflow(
      {this.id,
        this.payment,
        this.description,
        this.inflowOutflowType,
        this.amount,
        this.invoice,
        this.createdAt,
        this.updatedAt});
  factory CashInflowOutflow.fromJson(Map<String, dynamic> json) =>
      _$CashInflowOutflowFromJson(json);
  Map<String, dynamic> toJson() => _$CashInflowOutflowToJson(this);
}

