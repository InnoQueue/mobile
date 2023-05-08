import 'package:flutter/material.dart';

import '../../application/get_it/get_it_service_locator.dart';
import '../../data/analytics/fb_analytics.dart';
import '../presentation.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  var themes = ['English', 'Russian'];
  var currentTheme = 'English';

  @override
  Widget build(BuildContext context) {
    return SelectionList(
      title: 'Language',
      selectedIndex: themes.indexOf(currentTheme),
      nameBuilder: (index) => themes[index],
      onTap: (index) {
        currentTheme = themes[index];
        getIt.get<FBAnalytics>().logLanguageSettingsUpdated(
              preferredLanguage: currentTheme,
            );
        setState(() {});
      },
      length: themes.length,
      applyButtonPresent: false,
    );
  }
}
