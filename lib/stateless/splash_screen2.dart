import 'package:car_market2/localization/localization_constants.dart';
import 'package:flutter/material.dart';

import '../styling.dart';
import 'dots_indicator.dart';

class SplashScreen2 extends StatelessWidget {
  final String routeName = "./splashScreen2";
  final double splashIndex = 1.0;

  const SplashScreen2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/Mask Group 5.png",
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                      right: 50,
                      left: 50,
                    ),
                    child: Text(
                      getTranslated(context, "splash_title2"),
                      style: titleStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 50,
                      left: 50,
                    ),
                    child: Container(
                      width: mediaQuery.size.width * 0.8,
                      child: Text(
                        getTranslated(context, "splash_text2"),
                        style: contextTextStyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 15,
                      left: 50,
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/Filter-rafiki@3x.png",
                        width: mediaQuery.size.width * 0.75,
                        height: mediaQuery.size.height * 0.37,
                      ),
                    ),
                  ),
                  dotsIndicator(splashIndex),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
