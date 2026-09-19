import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Lato',
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromRGBO(254, 206, 1, 1),
        primary: Color.fromRGBO(254, 206, 1, 1),
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
        titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      useMaterial3: true,
    );
  }
}
