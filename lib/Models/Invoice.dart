import 'CashInflowOutflow.dart';
import 'Payment.dart';
import 'Status.dart';
import 'User.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class Invoice {
  int id;
  String depreciatedAt;
  User cliente;
  double totalPrice;
  int totalMaterials;
  int processedBy;
  String clientName;
  String orderCode;
  Status status;
  Payment payment;
  List<CashInflowOutflow> cashInflowOutflows;
  DateTime createdAt;
  DateTime updatedAt;

  Invoice(
      {this.id,
        this.depreciatedAt,
        this.cliente,
        this.totalPrice,
        this.totalMaterials,
        this.processedBy,
        this.clientName,
        this.orderCode,
        this.status,
        this.payment,
        this.cashInflowOutflows,
        this.createdAt,
        this.updatedAt
      });
  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}
