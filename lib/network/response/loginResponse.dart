import 'package:car_market2/network/models/account.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loginResponse.g.dart';

@JsonSerializable()
class LoginResponse {
  int status;
  String message;
  Account account;

  LoginResponse({this.status, this.message, this.account});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
