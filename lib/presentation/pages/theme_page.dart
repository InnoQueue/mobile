import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/get_it/get_it_service_locator.dart';
import '../../domain/domain.dart';
import '../presentation.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  var themes = ['light', 'dark'];
  late var currentTheme =
      context.read<AppThemeCubit>().isLight ? 'light' : 'dark';

  @override
  Widget build(BuildContext context) {
    return SelectionList(
      title: S.of(context).theme,
      selectedIndex: themes.indexOf(currentTheme),
      nameBuilder: (index) {
        switch (index) {
          case 0:
            return S.of(context).light;
          case 1:
            return S.of(context).dark;
          default:
            throw UnimplementedError();
        }
      },
      onTap: (index) {
        currentTheme = themes[index];
        index == 0
            ? context.read<AppThemeCubit>().enableLightTheme()
            : context.read<AppThemeCubit>().enableDarkTheme();
        getIt.get<AnalyticsRepository>().logThemeSettingsUpdated(
              preferredTheme: currentTheme,
            );
        setState(() {});
      },
      length: themes.length,
      applyButtonPresent: false,
    );
  }
}
