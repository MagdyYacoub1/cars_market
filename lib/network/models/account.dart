import 'package:car_market2/network/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  @required
  String apiToken;
  @required
  String phone;
  @required
  User user;

  Account({@required this.apiToken, @required this.phone, @required this.user});

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
