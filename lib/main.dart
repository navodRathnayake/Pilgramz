import 'dart:ui';
import 'Utils/Theme Data.dart';
import 'package:flutter/material.dart';
import 'package:pilgramz/Pages/myHomePage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pilgramz',
      theme: ThemeData(
        textTheme: screenWidth < 750 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
        fontFamily: "Ubuntu",
        brightness: Brightness.light,
        primaryColor: PRIMARY_COLOR_LIGHT,
        secondaryHeaderColor: COLOR_GREY_CANVAS,
      ),
      darkTheme: ThemeData(
        textTheme:
            screenWidth < 750 ? TEXT_THEME_SMALL_DARK : TEXT_THEME_DEFAULT_DARK,
        fontFamily: "Ubuntu",
        brightness: Brightness.dark,
        primaryColor: PRIMARY_COLOR_DARK,
        secondaryHeaderColor: COLOR_GREY,
      ),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(),
    );
  }
}
