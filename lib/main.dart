import 'package:car_market2/routes.dart';
import 'package:car_market2/stateless/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'localization/localization_constants.dart';
import 'localization/my_localization.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyLocalization.withoutLocal(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<MyLocalization>(context).getLocale(),
      builder: initialPageBuilder,
    );
  }
}

Widget initialPageBuilder(context, snapshot) {
  if (snapshot.connectionState == ConnectionState.none ||
      snapshot.connectionState == ConnectionState.waiting) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  } else if (snapshot.connectionState == ConnectionState.done) if (snapshot
      .hasError) {
    return Text('Error: ${snapshot.error}');
  } else {
    Locale fetchedLocale = snapshot.data;
    return MaterialApp(
      locale: fetchedLocale,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      localeResolutionCallback: pickLocale,
      home: StartScreen(),
      routes: routes,
    );
  }
  else {
    return null;
  }
}
