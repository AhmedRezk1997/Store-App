import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/about/details.dart';
import 'package:store_app/constant/colors.dart';
//import 'package:localization/localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:store_app/welcomepage/welcome.dart';

import 'welcomepage/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  routes: {   "detail": (context) => Details(),
      //},

      debugShowCheckedModeBanner: false,
      title: "Ahmed Store",
      theme: ThemeData(

          //  GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
          primaryColor: primarycolor),
      home: Welcome(),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
    );
  }
}
