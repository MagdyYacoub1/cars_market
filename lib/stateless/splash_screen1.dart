import 'package:car_market2/stateless/splash_screen2.dart';
import 'package:car_market2/stateless/splash_screen2.dart';
import 'package:flutter/material.dart';

import '../main_screen.dart';

class SplashScreen1 extends StatelessWidget {
  final routeName = "./splashScreen1";

  const SplashScreen1({Key key}) : super(key: key);

  void showHome(context){
    Navigator.of(context).pushNamed(SplashScreen2().routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/Mask Group 5.png",
          ),
          InkWell(
            onTap: () =>{
              showHome(context)
            },
            child: Center(
              child: Image.asset(
                "assets/Logo-PNG@3x.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
