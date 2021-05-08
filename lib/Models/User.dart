import 'Cashier.dart';
import 'Project.dart';
import 'Role.dart';

import 'package:json_annotation/json_annotation.dart';
part 'User.g.dart';

@JsonSerializable()
class User {
  int? id;
  String? name;
  String? email;
  Role? role;
  List<Cashier>? cashiers;
  List<Project>? projects;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'email_verified_at')
  DateTime? emailVerifiedAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
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
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

