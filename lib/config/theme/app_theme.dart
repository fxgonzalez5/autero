import 'package:autero/config/theme/responsive.dart';
import 'package:flutter/material.dart';


class AppTheme {

  static const Color primary =  Color(0xffF7C473);

  AppTheme();

  ThemeData getTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      primary: primary,
      secondary: Colors.black,    
    ),

    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        hintStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w300), 
        suffixIconColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(Responsive(context).ip(2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(Responsive(context).ip(2)),
        ),
      ),

    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.white),
        foregroundColor: WidgetStatePropertyAll(Colors.black),        
      ),
    ),

    filledButtonTheme: const FilledButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.black),
      ),
    ),

    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.underline
          )
        ),
        splashFactory: NoSplash.splashFactory
      ),
    ),
  );
}