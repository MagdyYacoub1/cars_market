import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'registerRequest.g.dart';

@JsonSerializable()
class RegisterRequest {
  @required
  String name;
  @required
  String phone;
  @required
  String password;
  @optionalTypeArgs
  String email;
  @optionalTypeArgs
  String image;
  @optionalTypeArgs
  String fireBaseToken;

  RegisterRequest(
      {@required this.name,
      @required this.phone,
      @required this.password,
      @optionalTypeArgs this.email,
      @optionalTypeArgs this.image,
      @optionalTypeArgs this.fireBaseToken});

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
