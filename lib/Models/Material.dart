import 'Category.dart';
import 'Measure.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Material.g.dart';

@JsonSerializable()
class Material {
  int ? id;
  String? name;
  double? quantity;
  @JsonKey(name: 'buy_price')
  double? buyPrice;
  String? description;
  @JsonKey(name: 'short_description')
  String? shortDescription;
  @JsonKey(name: 'intern_material')
  bool? internMaterial;
  @JsonKey(name: 'created_by')
  String? createdBy;
  @JsonKey(name: 'updated_by')
  String? updatedBy;
  Measure? measure;
  Category? category;
  List<Measure>? measures;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

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
  factory Material.fromJson(Map<String, dynamic> json) =>
      _$MaterialFromJson(json);
  Map<String, dynamic> toJson() => _$MaterialToJson(this);

}



