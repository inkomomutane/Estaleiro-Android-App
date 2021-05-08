import 'package:estaleiro/Models/Material.dart';
import 'package:estaleiro/Models/Measure.dart';
import 'package:estaleiro/Models/Order.dart';

import 'package:json_annotation/json_annotation.dart';
part 'MeasuresOfMaterial.g.dart';

@JsonSerializable()
class MeasuresOfMaterial {
  int? id;
  Measure? measures;
  Material? materials;
  int? price;
  String? description;
  @JsonKey(name: 'quantity_by_base_unity')
  double? quantityByBaseUnity;
  double? profit;
  double? discount;
  List<Order>? orders;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

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
factory MeasuresOfMaterial.fromJson(Map<String, dynamic> json) =>
      _$MeasuresOfMaterialFromJson(json);
  Map<String, dynamic> toJson() => _$MeasuresOfMaterialToJson(this);
}

