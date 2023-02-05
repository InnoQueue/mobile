import 'package:flutter/material.dart';

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
        setState(() {});
      },
      length: themes.length,
      applyButtonPresent: false,
    );
  }
}
