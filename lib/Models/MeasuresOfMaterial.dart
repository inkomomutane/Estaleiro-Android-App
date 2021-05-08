import 'package:estaleiro/Models/Material.dart';
import 'package:estaleiro/Models/Measure.dart';
import 'package:estaleiro/Models/Order.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class MeasuresOfMaterial {
  int id;
  Measure measures;
  Material materials;
  int price;
  String description;
  double quantityByBaseUnity;
  double profit;
  double discount;
  List<Order> orders;
  DateTime createdAt;
  DateTime updatedAt;

  MeasuresOfMaterial(
      {this.id,
        this.measures,
        this.materials,
        this.price,
        this.description,
        this.quantityByBaseUnity,
        this.profit,
        this.discount,
        this.orders,
        this.createdAt,
        this.updatedAt});
factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}

