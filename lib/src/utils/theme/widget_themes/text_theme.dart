import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TTextTheme {

  static TextTheme lightTextTheme =TextTheme(
    headlineLarge: GoogleFonts.openSans(
      color: Colors.black87,
      fontSize: 30,
      fontWeight: FontWeight.bold
      ),
      headlineMedium: GoogleFonts.openSans(
        color: Colors.black54,
        fontSize: 24
        
      )
  );
  static TextTheme  darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.openSans(
      color: Colors.white70,
      fontSize: 30,
      fontWeight: FontWeight.bold
      ),
      headlineMedium: GoogleFonts.openSans(
        color: Colors.white54,
        fontSize: 24
      )
  );

}