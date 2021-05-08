import 'package:estaleiro/Models/Project.dart';
import 'Invoice.dart';

import 'package:json_annotation/json_annotation.dart';
part 'Status.g.dart';

@JsonSerializable()
class Status {
  int? id;
  String? name;
  List<Project>? projects;
  List<Invoice>? invoices;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  Status({this.id,
    this.name,
    this.projects,
    this.invoices,
    this.createdAt,
    this.updatedAt
  });
  factory Status.fromJson(Map<String, dynamic> json) =>
      _$StatusFromJson(json);
  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
