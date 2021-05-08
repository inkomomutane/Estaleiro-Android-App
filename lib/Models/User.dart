import 'Cashier.dart';
import 'Project.dart';
import 'Role.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Cashier.g.dart';

@JsonSerializable()
class User {
  int id;
  String name;
  String email;
  Role role;
  List<Cashier> cashiers;
  List<Project> projects;//
  DateTime createdAt;
  DateTime emailVerifiedAt;
  DateTime updatedAt;
  User(
      {this.id,
        this.name,
        this.email,
        this.role,
        this.cashiers,
        this.projects,
        this.createdAt,
        this.emailVerifiedAt,
        this.updatedAt});
  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
  Map<String, dynamic> toJson() => _$CashierToJson(this);
}

