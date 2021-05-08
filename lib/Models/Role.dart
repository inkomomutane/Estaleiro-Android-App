import 'package:estaleiro/Models/User.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Role.g.dart';

@JsonSerializable()
class Role {
  int? id;
  String? name;
  String? description;
  List<User>? users;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Role(
      {this.id,
        this.name,
        this.description,
        this.users,
        this.createdAt,
        this.updatedAt
      });
  factory Role.fromJson(Map<String, dynamic> json) =>
      _$RoleFromJson(json);
  Map<String, dynamic> toJson() => _$RoleToJson(this);
}