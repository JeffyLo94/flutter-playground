import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AxonicsStyle {
  static Color AXONICS_GREEN = Color.fromARGB(255, 162, 223, 93);
  static Color AXONICS_GREY = Color.fromARGB(255, 73, 80, 87);
}

class Themes {
  ThemeData AxonicsMaterialThemeData = ThemeData(
      primaryColor: AxonicsStyle.AXONICS_GREEN,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AxonicsStyle.AXONICS_GREEN,
        onPrimary: AxonicsStyle.AXONICS_GREY,
        secondary: AxonicsStyle.AXONICS_GREEN,
        onSecondary: Colors.white,
        background: AxonicsStyle.AXONICS_GREY,
        onBackground: AxonicsStyle.AXONICS_GREY,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: AxonicsStyle.AXONICS_GREY,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(AxonicsStyle.AXONICS_GREY),
          side: MaterialStateProperty.all<BorderSide>(BorderSide(
              color: AxonicsStyle.AXONICS_GREY,
              width: 1.0,
              style: BorderStyle.solid)),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          )),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor: MaterialStateProperty.all(AxonicsStyle.AXONICS_GREY),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          // side: MaterialStateProperty.all<BorderSide>(BorderSide(
          //     color: AxonicsStyle.AXONICS_GREY,
          //     width: 1.0,
          //     style: BorderStyle.solid)),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          )),
        ),
      ),
      scaffoldBackgroundColor: AxonicsStyle.AXONICS_GREEN,
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: false,
        titleSpacing: 30,
        toolbarHeight: 70,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AxonicsStyle.AXONICS_GREY),
        // shape: Border(bottom: BorderSide(color: AxonicsStyle.AXONICS_GREY, width: 2))
      ),
      cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          margin: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
          elevation: 1));
  CupertinoThemeData AxonicsCupertinoThemeData = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: AxonicsStyle.AXONICS_GREEN,
    primaryContrastingColor: AxonicsStyle.AXONICS_GREY,
  );
}

class Styles {
  OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white),
      foregroundColor: MaterialStateProperty.all(AxonicsStyle.AXONICS_GREY),
      side: MaterialStateProperty.all<BorderSide>(BorderSide(
          color: AxonicsStyle.AXONICS_GREY,
          width: 1.0,
          style: BorderStyle.solid)),
      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      )),
    ),
  );
}
