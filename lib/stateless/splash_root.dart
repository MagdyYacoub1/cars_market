import 'package:car_market2/localization/localization_constants.dart';
import 'package:car_market2/stateless/signIn_screen.dart';
import 'package:car_market2/stateless/splash_screen1.dart';
import 'package:car_market2/stateless/splash_screen2.dart';
import 'package:car_market2/stateless/splash_screen3.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../color.dart';
import '../styling.dart';

class SplashRoot extends StatelessWidget {
  final String routeName = "./splashRoot";
  const SplashRoot({Key key}) : super(key: key);

  void changePage(CarouselController _controller, double index, BuildContext context){
    _controller.nextPage();
    print(index);
    if(index == 2.0) {
      Navigator.of(context).pushNamed(SignInScreen().routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double width = mediaQuery.size.width * 0.7;
    const double height = 45;
    double pageIndex;
    final CarouselController buttonCarouselController = CarouselController();
    const List<Widget> items = [
      SplashScreen1(),
      SplashScreen2(),
      SplashScreen3(),
    ];
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            items: items,
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: mediaQuery.size.height,
              initialPage: 0,
              viewportFraction: 1.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              onScrolled: (index){
                pageIndex = index;
              },
            ),
          ),
          Positioned(
            bottom: 25.0,
            left: (mediaQuery.size.width / 2) - ((mediaQuery.size.width * 0.7) / 2),
            child: TextButton(
              onPressed: () => changePage(buttonCarouselController, pageIndex, context),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(width, height)),
                backgroundColor: MaterialStateProperty.all(buttonColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  getTranslated(context, "continue"),
                  style: buttonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
