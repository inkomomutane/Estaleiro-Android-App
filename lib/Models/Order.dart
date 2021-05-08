import 'MeasuresOfMaterial.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Order.g.dart';

@JsonSerializable()
class Order {
  int? id;
  @JsonKey(name: 'order_code')
  String? orderCode;
  bool? discounted;
  int? material;
  int? quantity;
  @JsonKey(name: 'vat_included')
  bool? vatIncluded;
  @JsonKey(name: 'measures_of_material')
  MeasuresOfMaterial? measuresOfMaterial;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

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
  factory Order.fromJson(Map<String, dynamic> json) =>
      _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

