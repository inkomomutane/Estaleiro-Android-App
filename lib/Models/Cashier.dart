import 'User.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';
@JsonSerializable()
class Cashier {
  int?  id;
  @JsonKey(name: 'opened_at')
  DateTime? openedAt;
  @JsonKey(name: 'closed_at')
  DateTime? closedAt;
  @JsonKey(name: 'initial_balance')
  double? initialBalance;
  @JsonKey(name: 'final_balance')
  double? finalBalance;
  @JsonKey(name: 'cashier_status')
  bool? cashierStatus;
  User? employee;
  bool? status;
  String? observation;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

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

