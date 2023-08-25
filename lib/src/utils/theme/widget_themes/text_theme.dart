import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.openSans(
        color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.openSans(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
    headlineSmall: GoogleFonts.openSans(color: Colors.black54, fontSize: 18),
    bodyMedium:    GoogleFonts.openSans(color: Colors.black45, fontSize: 12),
    bodySmall:  GoogleFonts.openSans(color: Colors.black, fontSize: 12),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.openSans(
        color: Colors.white70, fontSize: 30, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.openSans(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    headlineSmall: GoogleFonts.openSans(color: Colors.white, fontSize: 18),
    bodyMedium:    GoogleFonts.openSans(color: Colors.white, fontSize: 12),
    bodySmall:  GoogleFonts.openSans(color: Colors.white, fontSize: 10),
  );
}
