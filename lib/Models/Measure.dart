import 'package:estaleiro/Models/Material.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Measure.g.dart';

@JsonSerializable()
class Measure {
  int? id;
  String? name;
  List<Material>? materials;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  Measure({this.id, this.name, this.materials, this.createdAt, this.updatedAt});
  factory Measure.fromJson(Map<String, dynamic> json) =>
      _$MeasureFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureToJson(this);
}
