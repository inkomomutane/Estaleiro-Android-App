import 'CashInflowOutflow.dart';
import 'Payment.dart';
import 'Status.dart';
import 'User.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Invoice.g.dart';

@JsonSerializable()
class Invoice {
  int? id;
  @JsonKey(name: 'depreciated_at')
  String? depreciatedAt;
  User? cliente;
  @JsonKey(name: 'total_price')
  double? totalPrice;
  @JsonKey(name: 'total_materials')
  int? totalMaterials;
  @JsonKey(name: 'processed_by')
  int? processedBy;
  @JsonKey(name: 'client_name')
  String? clientName;
  @JsonKey(name: 'order_code')
  String? orderCode;
  Status? status;
  Payment? payment;
  @JsonKey(name: 'cash_inflow_outflows')
  List<CashInflowOutflow>? cashInflowOutflows;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

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
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}
