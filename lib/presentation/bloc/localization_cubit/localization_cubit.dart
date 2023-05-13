import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/application.dart';
import '../../../domain/domain.dart';

class LocalizationCubit extends Cubit<Locale> {
  LocalizationCubit(Locale initialLocale) : super(initialLocale);

  late final SettingsRepository _settingsRepository =
      getIt.get<SettingsRepository>();

  void setLanguage(String language) {
    _settingsRepository.setLanguage(language);
    emit(Locale(language));
  }
}
