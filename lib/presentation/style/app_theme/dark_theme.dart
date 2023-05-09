import 'package:flutter/material.dart';
import '../../presentation.dart';

class DarkTheme extends AppTheme {
  DarkTheme(ThemeData initialTheme)
      : super(
          supportSeparator: const Color(0x33FFFFFF),
          labelPrimary: const Color(0xFFFFFFFF),
          lightGrey: const Color(0xFF48484A),
          backgroundColor: Colors.grey.shade900,
          appBarColor: Colors.grey.shade800,
          cardColor: Colors.grey.shade800,
          initialTheme: initialTheme,
        );
}
