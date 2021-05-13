import 'package:estaleiro/Models/User.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Auth.g.dart';
const String baseUrl = "http://192.168.56.1:8000/api/";
const String accept = "application/json";

@JsonSerializable()
class Auth{
  User? user;
  String? token;
   @JsonKey(name: 'access_token')
  String? accessToken;
  @JsonKey(name: 'token_type')
  String? tokenType;
  @JsonKey(name: 'expires_at')
  DateTime? expiresAt;

Auth({this.user,this.token,this.accessToken, this.expiresAt,this.tokenType});
  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
  Map<String, dynamic> toJson() => _$AuthToJson(this);
}
