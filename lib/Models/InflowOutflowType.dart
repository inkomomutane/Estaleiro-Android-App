import 'CashInflowOutflow.dart';

import 'package:json_annotation/json_annotation.dart';
part 'InflowOutflowType.g.dart';

@JsonSerializable()
class InflowOutflowType {
  int? id;
  String? name;
  @JsonKey(name: 'cash_inflow_outflows')
  List<CashInflowOutflow>? cashInflowOutflows;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  InflowOutflowType(
      {this.id,
        this.name,
        this.cashInflowOutflows,
        this.createdAt,
        this.updatedAt});
  factory InflowOutflowType.fromJson(Map<String, dynamic> json) =>
      _$InflowOutflowTypeFromJson(json);
  Map<String, dynamic> toJson() => _$InflowOutflowTypeToJson(this);
}

