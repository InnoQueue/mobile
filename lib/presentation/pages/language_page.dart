// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/get_it/get_it_service_locator.dart';
import '../../domain/domain.dart';
import '../presentation.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  List<String> get languages => [
        'en',
        'ru',
      ];

  late String currentLanguage =
      context.read<LocalizationCubit>().state.languageCode;

  @override
  Widget build(BuildContext context) {
    return SelectionList(
      title: S.of(context).language,
      selectedIndex: languages.indexOf(currentLanguage),
      nameBuilder: (index) {
        switch (languages[index]) {
          case 'en':
            return 'English';
          case 'ru':
            return 'Русский';
          default:
            throw UnimplementedError();
        }
      },
      onTap: (index) {
        currentLanguage = languages[index];
        setState(() {});
        getIt.get<AnalyticsRepository>().logLanguageSettingsUpdated(
              preferredLanguage: currentLanguage,
            );
        context.read<LocalizationCubit>().setLanguage(currentLanguage);
      },
      length: languages.length,
    );
  }
}
