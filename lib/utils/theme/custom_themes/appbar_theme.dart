import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();

//light  AppBar Theme
  static const lightAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 24,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.black,
        size: 24,
      ),
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600, color: Colors.black, fontSize: 18));

  //dark  AppBar Theme
  static const darkAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 24,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.white,
        size: 24,
      ),
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600, color: Colors.white, fontSize: 18));
}
