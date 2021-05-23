import 'package:car_market2/network/request/registerRequest.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:retrofit/retrofit.dart';
import 'package:car_market2/network/response/loginResponse.dart';
import 'package:car_market2/network/request/loginRequest.dart';
import 'package:car_market2/network/request/registerRequest.dart';
import 'package:car_market2/network/response/registerResponse.dart';

part 'service.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST('https://khaled-cars.magdsoft.com/api/login')
  Future<LoginResponse> login(
    @Body() LoginRequest loginRequest,
  );

  @POST('https://khaled-cars.magdsoft.com/api/register')
  Future<RegisterResponse> register(
    @Body() RegisterRequest registerRequest,
  );
}
