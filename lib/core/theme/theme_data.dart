import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groupup/core/theme/dimensions.dart';
import 'package:groupup/core/utils/colors/gu_colors.dart';

/// A class that is used to store the theme of the app.
class GUTheme {
  const GUTheme._();

  /// A static variable that is used to store the default theme of the app.
  static final defaultTheme = ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    scaffoldBackgroundColor: GUColors.primaryColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: GUColors.primaryColor,
      foregroundColor: GUColors.white,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: GUColors.transparent,
      foregroundColor: GUColors.primaryColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: GUColors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    fontFamily: 'Nunito',
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        color: GUColors.gray,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        color: GUColors.gray,
        fontWeight: FontWeight.w300,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: GUColors.black,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: TextStyle(
        fontSize: 24,
        color: GUColors.black,
        fontWeight: FontWeight.w800,
      ),
      displayLarge: TextStyle(
        fontSize: 24,
        color: GUColors.black,
        fontWeight: FontWeight.w600,
      ),
      displayMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: GUColors.black,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: Dimension.spacer.all.md,
      border: const OutlineInputBorder(),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: GUColors.black,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: GUColors.gray,
        ),
      ),
      hintStyle: const TextStyle(
        color: GUColors.gray,
        fontSize: 16,
      ),
      errorStyle: const TextStyle(
        color: GUColors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: GUColors.white,
      elevation: 0,
      selectedItemColor: GUColors.primaryColor,
      unselectedItemColor: GUColors.gray,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: GUColors.primaryColor,
    ),
    primaryColor: GUColors.primaryColor,
    disabledColor: GUColors.gray,
  );
}
