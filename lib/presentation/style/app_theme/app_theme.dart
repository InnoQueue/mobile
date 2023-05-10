import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
export 'light_theme.dart';
export 'dark_theme.dart';

abstract class AppTheme {
  late ThemeData themeData;

  final Color supportSeparator;
  final Color labelPrimary;
  final Color lightGrey;

  final Color backgroundColor;
  final Color appBarColor;
  final Color cardColor;

  AppTheme({
    required this.supportSeparator,
    required this.labelPrimary,
    required this.lightGrey,
    required this.backgroundColor,
    required this.appBarColor,
    required this.cardColor,
    required ThemeData initialTheme,
  }) {
    themeData = initialTheme.copyWith(
      scaffoldBackgroundColor: backgroundColor,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
      ),
      cardColor: cardColor,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(supportSeparator),
      ),
      colorScheme: initialTheme.colorScheme.copyWith(
        primary: labelPrimary.withOpacity(0.8),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: labelPrimary.withOpacity(0.8),
      ),
      canvasColor: cardColor,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        foregroundColor: labelPrimary,
        backgroundColor: appBarColor,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: labelPrimary,
        ),
      ),
      iconTheme: IconThemeData(
        color: labelPrimary,
      ),
      textTheme: initialTheme.textTheme.apply(
        bodyColor: labelPrimary,
        displayColor: labelPrimary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appBarColor,
        selectedItemColor: labelPrimary,
      ),
      dividerTheme: DividerThemeData(color: supportSeparator),
    );
  }
}
