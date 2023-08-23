import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {

  TAppTheme._();

static ThemeData lightTheme = ThemeData(
  primaryColor: Colors.yellow,
  brightness: Brightness.light,
  textTheme:TTextTheme.lightTextTheme ,
  appBarTheme: AppBarTheme(),
  floatingActionButtonTheme: FloatingActionButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom() 
  )
  );


static ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
   primaryColor: Colors.yellow,
  textTheme: TTextTheme.darkTextTheme,
  appBarTheme: AppBarTheme(),
  floatingActionButtonTheme: FloatingActionButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom() 
  )
);

}