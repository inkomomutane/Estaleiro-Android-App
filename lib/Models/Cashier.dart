import 'User.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';
@JsonSerializable()
class Cashier {
  int id;
  DateTime openedAt;
  DateTime closedAt;
  double initialBalance;
  double finalBalance;
  bool cashierStatus;
  User employee;
  bool status;
  String observation;
  DateTime createdAt;
  DateTime updatedAt;

  Cashier(
      {this.id,
        this.openedAt,
        this.closedAt,
        this.initialBalance,
        this.finalBalance,
        this.cashierStatus,
        this.employee,
        this.status,
        this.observation,
        this.createdAt,
        this.updatedAt
      });
factory Cashier.fromJson(Map<String, dynamic> json) => _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}

