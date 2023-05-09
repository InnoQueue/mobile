import 'package:flutter/material.dart';

import '../../application/get_it/get_it_service_locator.dart';
import '../../data/analytics/fb_analytics.dart';
import '../presentation.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  var themes = ['Bright', 'Dark'];
  var currentTheme = 'Bright';

  @override
  Widget build(BuildContext context) {
    return SelectionList(
      title: 'Theme',
      selectedIndex: themes.indexOf(currentTheme),
      nameBuilder: (index) => themes[index],
      onTap: (index) {
        currentTheme = themes[index];
        getIt.get<FBAnalytics>().logThemeSettingsUpdated(
              preferredTheme: currentTheme,
            );
        setState(() {});
      },
      length: themes.length,
      applyButtonPresent: false,
    );
  }
}
