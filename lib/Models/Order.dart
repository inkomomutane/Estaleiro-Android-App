import 'MeasuresOfMaterial.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class Order {
  int id;
  String orderCode;
  bool discounted;
  int material;
  int quantity;
  bool vatIncluded;
  MeasuresOfMaterial measuresOfMaterial;
  DateTime createdAt;
  DateTime updatedAt;

  Order({this.id,
        this.orderCode,
        this.discounted,
        this.material,
        this.quantity,
        this.vatIncluded,
        this.measuresOfMaterial,
        this.createdAt,
        this.updatedAt
  });
  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}

