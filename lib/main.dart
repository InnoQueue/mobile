import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:innoq/data/analytics/fb_analytics.dart';
import 'package:uni_links/uni_links.dart';

import 'application/application.dart';
import 'firebase_options.dart';
import 'presentation/presentation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();

  getIt.registerSingleton(AppRouter(
    loginGuard: LoginGuard(),
  ));

  getIt.registerSingleton(FBAnalytics());
  getIt.get<FBAnalytics>().logAppOpen();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
    Colors.grey[50];
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt.get<FirebaseNotifcationsCubit>()),
      ],
      child: MaterialApp.router(
        routerDelegate: AutoRouterDelegate(
          getIt.get<AppRouter>(),
          navigatorObservers: () => [
            AppRouterObserver(),
          ],
        ),
        routeInformationParser: getIt.get<AppRouter>().defaultRouteParser(),
        theme: ThemeData(
          platform: TargetPlatform.iOS,
        ),
      ),
    );
  }

  void _handleJoinLink(Uri link) {
    if (link.pathSegments[0] == 'join') {
      getIt.get<AppRouter>().push(
            JoinInProressRoute(qrCode: link.pathSegments[1]),
          );
      getIt.get<FBAnalytics>().logDeeplinkOpen(link);
    }
  }
}
