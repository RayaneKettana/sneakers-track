import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const Color primaryColor = Color.fromARGB(255, 0, 0, 0);
const Color errorColor = Color(0xffb3261E);
BorderRadius borderRadius = BorderRadius.circular(30.h);
const Color blackColor = Color(0xff171717);
const double defaultPadding = 16.0;

ThemeData theming = ThemeData(
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: blackColor,
        )
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(color: blackColor),
      centerTitle: true,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      focusColor: blackColor,
      hoverColor: blackColor,
      fillColor: blackColor,
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: blackColor,
        )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: blackColor,
            textStyle: const TextStyle(color: Colors.white))));

