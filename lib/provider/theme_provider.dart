import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resumeapp/ui/utils/app_colors.dart';

class ThemeProvider extends ChangeNotifier {

  //Switch between Dark Mode and Light Mode
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isSwitchOn) {
    themeMode = isSwitchOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  //Dark Theme Mode
  static final darkTheme = ThemeData(
    textTheme: GoogleFonts.openSansTextTheme(),
    scaffoldBackgroundColor: kGrayColor0,
    primaryColor: kGrayColor0,
    colorScheme: const ColorScheme.dark(),
  );

  //Light Theme Mode
  static final lightTheme = ThemeData(
    textTheme: GoogleFonts.openSansTextTheme(),
    scaffoldBackgroundColor: kWhite,
    primaryColor: kWhite,
    colorScheme: const ColorScheme.light(),
  );
}