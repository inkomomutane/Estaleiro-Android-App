import 'package:estaleiro/Models/User.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class Role {
  int id;
  String name;
  String description;
  List<User> users;
  DateTime createdAt;
  DateTime updatedAt;

  Role(
      {this.id,
        this.name,
        this.description,
        this.users,
        this.createdAt,
        this.updatedAt
      });
  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}