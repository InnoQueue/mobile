import 'package:flutter/material.dart';

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
        setState(() {});
      },
      length: themes.length,
      applyButtonPresent: false,
    );
  }
}
