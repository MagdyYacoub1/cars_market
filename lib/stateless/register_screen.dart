import 'package:car_market2/localization/localization_constants.dart';
import 'package:car_market2/localization/my_localization.dart';
import 'package:car_market2/main.dart';
import 'package:car_market2/stateless/signIn_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:car_market2/network/response/registerResponse.dart';
import 'package:car_market2/network/request/registerRequest.dart';

import '../color.dart';
import '../styling.dart';

class RegisterScreen extends StatelessWidget {
  final routeName = "./startScreen";

  void register(
      String name, String phone, String password, String email) async {
    RegisterResponse registerResponse = await client.register(RegisterRequest(
        name: name, phone: phone, password: password, email: email));
    if(registerResponse?.status != null && registerResponse?.status == 200){
      showMyToast(registerResponse.message);
    }else{
      if(registerResponse?.status != null){
        showMyToast(registerResponse?.message);
      }
    }

  }

  void showMyToast(String message) {
    print(message);
  }

  bool initialCircleState(BuildContext context) {
    Locale _locale = Provider.of<MyLocalization>(context).locale;
    String lang = _locale.languageCode;
    if (lang == Arabic)
      return false;
    else
      return true;
  }

  void showSignInScreen(BuildContext context) {
    Navigator.of(context).pushNamed(SignInScreen().routeName);
  }

  void toggleEnglish(BuildContext context) {
    Provider.of<MyLocalization>(context, listen: false).setLocale(English);
  }

  void toggleArabic(BuildContext context) {
    Provider.of<MyLocalization>(context, listen: false).setLocale(Arabic);
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double redButtonWidth = mediaQuery.size.width * 0.7;
    const double redButtonHeight = 45;
    bool languageCircle = initialCircleState(context);
    final phoneController = TextEditingController();
    final nameController = TextEditingController();
    final passwordController = TextEditingController();
    final emailController = TextEditingController();

    CountryCode countryCode;
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
                                getTranslated(context, "register"),
                                style: titleStyle,
                              ),
                            ),
                            SizedBox(height: 40.0),
                            TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                hintText: getTranslated(context, "name_hint"),
                                hintStyle: contextTextStyle,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                hintText: getTranslated(context, "email_hint"),
                                hintStyle: contextTextStyle,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            TextField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                hintText:
                                    getTranslated(context, "phone_number_hint"),
                                hintStyle: contextTextStyle,
                                suffixIcon: CountryCodePicker(
                                  padding: EdgeInsets.zero,
                                  initialSelection: 'SD',
                                  onChanged: (code) {
                                    countryCode = code;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                hintText:
                                    getTranslated(context, "password_hint"),
                                hintStyle: contextTextStyle,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () => toggleEnglish(context),
                                  child: Column(
                                    children: [
                                      Text(
                                        getTranslated(context, "english"),
                                        style: contextTextStyle,
                                      ),
                                      Visibility(
                                        visible: languageCircle,
                                        child: Image.asset(
                                          "assets/circle@3x.png",
                                          width: 10.0,
                                          height: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () => toggleArabic(context),
                                  child: Column(
                                    children: [
                                      Text(
                                        getTranslated(context, "arabic"),
                                        style: contextTextStyle,
                                      ),
                                      Visibility(
                                        visible: !languageCircle,
                                        child: Image.asset(
                                          "assets/circle@3x.png",
                                          width: 10.0,
                                          height: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25.0),
                            TextButton(
                              onPressed: () => register(
                                  nameController.text,
                                  phoneController.text,
                                  passwordController.text,
                                  emailController.text),
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                    Size(redButtonWidth, redButtonHeight)),
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
                    getTranslated(context, "have_account"),
                    style: contextTextStyle,
                  ),
                  SizedBox(height: 10.0),
                  InkWell(
                    onTap: () => showSignInScreen(context),
                    child: Text(
                      getTranslated(context, "sign_in"),
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
