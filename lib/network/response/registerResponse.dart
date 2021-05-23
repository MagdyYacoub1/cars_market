import 'package:car_market2/network/models/account.dart';
import 'package:json_annotation/json_annotation.dart';
part 'registerResponse.g.dart';

@JsonSerializable()
class RegisterResponse{
  int status;
  String message;
  Account account;

  RegisterResponse({this.status, this.message, this.account});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}