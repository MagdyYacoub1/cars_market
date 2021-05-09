import 'package:car_market2/stateless/register_screen.dart';
import 'package:car_market2/stateless/signIn_screen.dart';
import 'package:car_market2/stateless/splash_root.dart';
import 'package:car_market2/stateless/splash_screen1.dart';
import 'package:car_market2/stateless/splash_screen2.dart';
import 'package:car_market2/stateless/splash_screen3.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashRoot().routeName: (ctx)=> SplashRoot(),
  SplashScreen1().routeName: (ctx)=> SplashScreen1(),
  SplashScreen2().routeName: (ctx)=> SplashScreen2(),
  SplashScreen3().routeName: (ctx)=> SplashScreen3(),
  SignInScreen().routeName: (ctx)=> SignInScreen(),
  RegisterScreen().routeName: (ctx)=> RegisterScreen(),
};