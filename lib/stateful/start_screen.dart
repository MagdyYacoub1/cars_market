import 'dart:async';

import 'package:car_market2/stateless/splash_root.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final routeName = "./startScreen";
  Timer myTimer;

  @override
  void initState() {
    super.initState();
    startTimerForSplashScreens();
  }

  @override
  void dispose() {
    myTimer.cancel();
    super.dispose();
  }

  void startTimerForSplashScreens() async {
    myTimer = Timer(const Duration(seconds: 1, milliseconds: 500), () {
      Navigator.of(context).pushNamed(SplashRoot().routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/Mask Group 5.png",
          ),
          Center(
            child: Image.asset(
              "assets/Logo-PNG@3x.png",
            ),
          ),
        ],
      ),
    );
  }
}
