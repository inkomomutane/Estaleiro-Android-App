import 'Material.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Category.g.dart';

@JsonSerializable()
class Category {
  int? id;
  String? name;
  int? level;
  Category? category;
  List<Material>? materials;
  List<Category>? categories;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  Category(
      {this.id,
      this.name,
      this.level,
      this.category,
      this.materials,
      this.categories,
      this.createdAt,
      this.updatedAt});
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
