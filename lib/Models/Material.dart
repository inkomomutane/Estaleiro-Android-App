import 'Category.dart';
import 'Measure.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class Material {
  String name;
  double quantity;
  double buyPrice;
  String description;
  String shortDescription;
  bool internMaterial;
  String createdBy;
  String updatedBy;
  Measure measure;
  Category category;
  List<Measure> measures;
  DateTime createdAt;
  DateTime updatedAt;

  Material(
      {this.name,
        this.quantity,
        this.buyPrice,
        this.description,
        this.shortDescription,
        this.internMaterial,
        this.createdBy,
        this.updatedBy,
        this.measure,
        this.category,
        this.measures,
        this.createdAt,
        this.updatedAt});
  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);

}



