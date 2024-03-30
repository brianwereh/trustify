import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trustify/src/utilis/theme/widget_themes/text_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light, textTheme: TTextTheme.lightTextTheme);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
  );
}
