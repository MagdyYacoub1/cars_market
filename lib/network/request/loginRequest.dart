import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loginRequest.g.dart';

@JsonSerializable()
class LoginRequest {
  @required
  String phone;
  @required
  String password;

  LoginRequest({@required this.phone, @required this.password});

  factory LoginRequest.fromJason(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
