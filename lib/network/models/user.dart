import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @required
  int id;
  @required
  String name;
  @optionalTypeArgs
  String image;
  @required
  String phone;
  @required
  String email;
  @required
  String lang;

  User(
      {@required this.id,
      @required this.name,
      @optionalTypeArgs this.image,
      @required this.phone,
      @required this.email,
      @required this.lang});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
