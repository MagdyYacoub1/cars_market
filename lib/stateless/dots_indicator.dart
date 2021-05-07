import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../color.dart';

Widget dotsIndicator(double index){
  return Padding(
    padding: const EdgeInsets.only(
      top: 50.0,
    ),
    child: Center(
      child: DotsIndicator(
        dotsCount: 3,
        position: index,
        decorator: DotsDecorator(
          color: textColor, // Inactive color
          activeColor: buttonColor,
        ),
      ),
    ),
  );
}