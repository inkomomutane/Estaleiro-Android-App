import 'package:estaleiro/Models/Material.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class Measure {
  int id;
  String name;
  List<Material> materials;
  DateTime createdAt;
  DateTime updatedAt;
  Measure({this.id, this.name, this.materials, this.createdAt, this.updatedAt});
  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}
