import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {

  TAppTheme._();

static ThemeData lightTheme = ThemeData(
  primaryColor: Colors.yellow,
  brightness: Brightness.light,
  textTheme:TTextTheme.lightTextTheme ,
  appBarTheme: AppBarTheme(),
  outlinedButtonTheme:TOutlinedButtonTheme.lightOutlinedButtonTheme ,
  floatingActionButtonTheme: FloatingActionButtonThemeData(),
  elevatedButtonTheme:TElevatedButtonTheme.lightElevatedButtonTheme
  );


static ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
   primaryColor: Colors.yellow,
  textTheme: TTextTheme.darkTextTheme,
  appBarTheme: AppBarTheme(),
   outlinedButtonTheme:TOutlinedButtonTheme.darkOutlinedButtonTheme,
  floatingActionButtonTheme: FloatingActionButtonThemeData(),
  elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme
);

}