import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:innoq/domain/domain.dart';
import 'package:uni_links/uni_links.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'application/application.dart';
import 'firebase_options.dart';
import 'presentation/presentation.dart';

//

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();
  initAnalyticsScope(getIt);
  getIt.get<AnalyticsRepository>().logAppOpen();

  getIt.registerSingleton(AppRouter(
    loginGuard: LoginGuard(),
  ));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppThemeCubit _appThemeCubit = AppThemeCubit(Theme.of(context));
  late final LocalizationCubit _localizationCubit =
      LocalizationCubit(_initialLocale);

  @override
  void initState() {
    super.initState();
    handleIncomingDeepLinks();
    handleInitialDeepLink();
  }

  void handleIncomingDeepLinks() {
    uriLinkStream.listen((link) {
      if (link != null) {
        _handleJoinLink(link);
      }
    });
  }

  Future<void> handleInitialDeepLink() async {
    final link = await getInitialUri();
    if (link != null) {
      _handleJoinLink(link);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt.get<FirebaseNotifcationsCubit>()),
        BlocProvider.value(value: _appThemeCubit),
        BlocProvider.value(value: _localizationCubit),
      ],
      child: Builder(
        builder: (context) => MaterialApp.router(
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: context.watch<LocalizationCubit>().state,
          routerDelegate: AutoRouterDelegate(
            getIt.get<AppRouter>(),
            navigatorObservers: () => [AppRouterObserver(), HeroController()],
          ),
          routeInformationParser: getIt.get<AppRouter>().defaultRouteParser(),
          theme: context.watch<AppThemeCubit>().state.themeData.copyWith(
                platform: TargetPlatform.iOS,
              ),
        ),
      ),
    );
  }

  Locale get _initialLocale {
    final String platformLanguage = Platform.localeName.split('_')[0];
    final List<String> supportedLanguages = S.delegate.supportedLocales
        .map((locale) => locale.languageCode)
        .toList();

    final String? appLanguage = getIt.get<SettingsRepository>().language;

    String preferredSupportedLanguage =
        supportedLanguages.contains(platformLanguage)
            ? platformLanguage
            : supportedLanguages.first;

    return appLanguage == null
        ? Locale(preferredSupportedLanguage)
        : Locale(appLanguage);
  }

  void _handleJoinLink(Uri link) {
    if (link.pathSegments[0] == 'join') {
      getIt.get<AppRouter>().push(
            JoinInProressRoute(qrCode: link.pathSegments[1]),
          );
      getIt.get<AnalyticsRepository>().logDeeplinkOpen(link);
    }
  }
}
