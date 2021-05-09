import 'package:car_market2/localization/localization_constants.dart';
import 'package:car_market2/stateless/register_screen.dart';
import 'package:flutter/material.dart';

import '../color.dart';
import '../styling.dart';

class SignInScreen extends StatelessWidget {
  final routeName = "./signInScreen";

  const SignInScreen({Key key}) : super(key: key);
void showRegisterScreen(BuildContext context)
{
  Navigator.of(context).pushNamed(RegisterScreen().routeName);
}
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double width = mediaQuery.size.width * 0.7;
    const double height = 45;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/Mask Group 5.png",
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Logo-PNG_Croped.png",
                    width: mediaQuery.size.width * 0.6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                      left: 20.0,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(37.0),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                getTranslated(context, "sign_in"),
                                style: titleStyle,
                              ),
                            ),
                            SizedBox(height: 40.0),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                hintText: getTranslated(context, "phone_number_hint"),
                                hintStyle: contextTextStyle,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                hintText: getTranslated(context, "password_hint"),
                                hintStyle: contextTextStyle,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: double.infinity,
                              child: InkWell(
                                onTap: ()=>{},
                                child: Text(
                                  getTranslated(context, "forgot_password"),
                                  textAlign: TextAlign.end,
                                  style: flatButtonTextStyle,
                                ),
                              ),
                            ),
                            SizedBox(height: 25.0),
                            TextButton(
                              onPressed: () => {},
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                    Size(width, height)),
                                backgroundColor:
                                    MaterialStateProperty.all(buttonColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
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
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: contextTextColor,
                                    thickness: 3.0,
                                    indent: 1.0,
                                    endIndent: 4.0,
                                  ),
                                ),
                                Text(
                                  getTranslated(context, "other_ways"),
                                  style: contextTextStyle,
                                  //overflow: TextOverflow.visible,
                                  softWrap: false,
                                ),
                                Expanded(
                                  child: Divider(
                                    color: contextTextColor,
                                    thickness: 3.0,
                                    indent: 4.0,
                                    endIndent: 1.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Image.asset("assets/apple@3x.png"),
                                  iconSize: 55.0,
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () => {},
                                ),
                                SizedBox(width: 10),
                                IconButton(
                                  icon: Image.asset("assets/googlePlus@3x.png"),
                                  iconSize: 55.0,
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () => {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  Text(
                    getTranslated(context, "don't_have_account"),
                    style: contextTextStyle,
                  ),
                  SizedBox(height: 10.0),
                  InkWell(
                    onTap: () => showRegisterScreen(context),
                    child: Text(
                      getTranslated(context, "register_new_account"),
                      style: flatButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
