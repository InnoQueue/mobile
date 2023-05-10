import 'package:flutter/material.dart';

import '../../presentation.dart';

class LightTheme extends AppTheme {
  LightTheme(ThemeData initialTheme)
      : super(
          supportSeparator: const Color(0x33000000),
          labelPrimary: const Color(0xFF000000),
          lightGrey: const Color(0xFFD1D1D6),
          backgroundColor: Colors.grey.shade100,
          appBarColor: Colors.white,
          cardColor: Colors.white,
          initialTheme: initialTheme,
        );
}
