import 'package:car_market2/stateless/splash_screen1.dart';
import 'package:car_market2/stateless/splash_screen2.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (ctx) => SplashScreen1(),
  SplashScreen2().routeName: (ctx)=> SplashScreen2(),
  MyHomePage().routeName: (ctx)=> MyHomePage(),
};