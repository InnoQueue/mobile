import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  var themes = ['Light', 'Dark'];
  late var currentTheme =
      context.read<AppThemeCubit>().isLight ? 'Light' : 'Dark';

  @override
  Widget build(BuildContext context) {
    return SelectionList(
      title: 'Theme',
      selectedIndex: themes.indexOf(currentTheme),
      nameBuilder: (index) => themes[index],
      onTap: (index) {
        currentTheme = themes[index];
        index == 0
            ? context.read<AppThemeCubit>().enableLightTheme()
            : context.read<AppThemeCubit>().enableDarkTheme();
        setState(() {});
      },
      length: themes.length,
      applyButtonPresent: false,
    );
  }
}
