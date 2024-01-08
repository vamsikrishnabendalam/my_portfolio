import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle logoTextStyle({Color color = Colors.white}) {
    return GoogleFonts.nanumGothicCoding(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle headerTextStyle({Color color = Colors.white}) {
    return GoogleFonts.merienda(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle montserratStyle(
      {required Color color, double fontSize = 24}) {
    return GoogleFonts.dancingScript(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: fontSize,
    );
  }

  static TextStyle headingStyles(
      {double fontSize = 36, Color color = Colors.white}) {
    return GoogleFonts.merienda(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      letterSpacing: 2,
    );
  }

  static TextStyle smallheadingStyles(
      {double fontSize = 22, Color color = Colors.white}) {
    return GoogleFonts.merienda(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      letterSpacing: 2,
    );
  }

  static TextStyle desctempStyle(
      {double fontSize = 16, Color color = Colors.white}) {
    return GoogleFonts.openSans(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: color,
      letterSpacing: 2,
    );
  }

  static TextStyle normalStyle(
      {Color color = Colors.white, double fontSize = 16}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color,
      letterSpacing: 1.7,
      height: 1.5,
    );
  }

  static TextStyle descStyle(
      {Color color = Colors.white, double fontSize = 16}) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: fontSize,
      color: color,
      letterSpacing: 1.7,
      height: 1.5,
    );
  }

  static TextStyle comfortaaStyle() {
    return GoogleFonts.comfortaa(
        fontSize: 18, fontWeight: FontWeight.w800, color: Colors.grey);
  }

  static TextStyle buttonStyle() {
    return GoogleFonts.comfortaa(
        fontSize: 15, fontWeight: FontWeight.w800, color: Colors.black);
  }
}
