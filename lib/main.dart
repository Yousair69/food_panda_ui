import 'package:flutter/material.dart';
import 'package:food_panda_ui/constants/colors.dart';
import 'package:food_panda_ui/constants/constants.dart';
import 'package:food_panda_ui/dashboard/splash_screen.dart';
import 'package:food_panda_ui/dashboard/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MyColors.navy,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xfffcfcfc),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: .2,
            titleTextStyle:
                TextStyle(fontFamily: Bold, color: Color(0xff323232)),
            iconTheme: IconThemeData(color: MyColors.primaryColor)),
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: MyColors.navy,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: .2,
              titleTextStyle:
                  TextStyle(fontFamily: Bold, color: Color(0xff323232)),
              iconTheme: IconThemeData(color: MyColors.primaryColor))),
      title: 'Flutter Demo',
      home: const SplashScreen(),
    );
  }
}
