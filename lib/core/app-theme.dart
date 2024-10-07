import 'package:flutter/material.dart';

class AppTheme {
  static const Color primarycolor = Color(0xffB7935f);
  static const Color primarydarkcolor = Color(0xffFACC1D);


  static ThemeData Lighttheme = ThemeData(

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: "elmessiri"),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primarycolor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontFamily: "elmessiri",
        fontSize: 15,
        fontWeight: FontWeight.w800,
      ),
      unselectedLabelStyle: TextStyle(
          fontFamily: "elmessiri",
        fontSize: 11,
        fontWeight: FontWeight.w800,
      ),
      selectedIconTheme: IconThemeData(
        color: Colors.black,

      size: 35,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      size: 23,
      ),
    ),
    dividerTheme: const DividerThemeData (
      color: primarycolor,

    ),
    textTheme:const  TextTheme(
      titleLarge:  TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: "elmessiri"),
    bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: "elmessiri"),
      bodyMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: "elmessiri"),
      bodySmall: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: "elmessiri"),
    )
  );

  static ThemeData darktheme = ThemeData(

      scaffoldBackgroundColor: Colors.transparent,

      appBarTheme: const AppBarTheme(

        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "elmessiri"),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xff141A2E),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primarydarkcolor,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontFamily: "elmessiri",
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: "elmessiri",
          fontSize: 11,
          fontWeight: FontWeight.w800,
        ),
        selectedIconTheme: IconThemeData(
          color: primarydarkcolor,

          size: 35,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 23,
        ),
      ),
      dividerTheme: const DividerThemeData (
        color: primarydarkcolor,

      ),
      textTheme:const  TextTheme(
        titleLarge:  TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "elmessiri"),
        bodyLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: "elmessiri"),
        bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontFamily: "elmessiri"),
        bodySmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: "elmessiri"),
      )
  );

}
