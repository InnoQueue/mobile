import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/application.dart';
import '../../../domain/domain.dart';
import '../../presentation.dart';

class AppThemeCubit extends Cubit<AppTheme> {
  // ignore: unused_field
  late final ThemeData _initialTheme;

  AppThemeCubit(this._initialTheme)
      : super(
          getIt.get<SettingsRepository>().theme == 'light'
              ? LightTheme(_initialTheme)
              : DarkTheme(_initialTheme),
        );

  void enableLightTheme() {
    emit(LightTheme(_initialTheme));
    getIt.get<SettingsRepository>().setTheme('light');
  }

  void enableDarkTheme() {
    emit(DarkTheme(_initialTheme));
    getIt.get<SettingsRepository>().setTheme('dark');
  }

  bool get isLight => state is LightTheme;
}
