import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/languages.dart';
import 'package:getx/screen_eighth.dart';
import 'package:getx/screen_five.dart';
import 'package:getx/screen_fourth.dart';
import 'package:getx/screen_ninth.dart';
import 'package:getx/screen_one.dart';
import 'package:getx/screen_seventh.dart';
import 'package:getx/screen_sixth.dart';
import 'package:getx/screen_three.dart';
import 'package:getx/screen_two.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      locale:  Locale('en', 'US'),
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      getPages: [
        GetPage(name: '/homeScreen', page: ()=> const HomeScreen()),
        GetPage(name: '/screen_one', page: ()=> const ScreenOne()),
        GetPage(name: '/screen_two', page: ()=> const ScreenTwo()),
        GetPage(name: '/screen_three', page: ()=> const ScreenThree()),
        GetPage(name: '/screen_fourth', page: ()=> const ScreenFourth()),
        GetPage(name: '/screen_five', page: ()=> const ScreenFive()),
        GetPage(name: '/screen_six', page: ()=> const ScreenSix()),
        GetPage(name: '/screen_seventh', page: ()=> const ScreenSeventh()),
        GetPage(name: '/screen_eighth', page: ()=> const ScreenEighth()),
        GetPage(name: '/screen_nineth', page: ()=> const ScreenNineth()),
      ],
    );
  }
}