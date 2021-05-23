// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registerRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) {
  return RegisterRequest(
    name: json['name'] as String,
    phone: json['phone'] as String,
    password: json['password'] as String,
    email: json['email'] as String,
    image: json['image'] as String,
    fireBaseToken: json['fireBaseToken'] as String,
  );
}

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'password': instance.password,
      'email': instance.email,
      'image': instance.image,
      'fireBaseToken': instance.fireBaseToken,
    };
