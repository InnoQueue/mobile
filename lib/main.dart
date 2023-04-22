import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uni_links/uni_links.dart';

import 'application/application.dart';
import 'presentation/presentation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter(
    loginGuard: LoginGuard(),
  );

  @override
  void initState() {
    super.initState();
    handleIncomingDeepLinks();
    handleInitialDeepLink();
  }

  void handleIncomingDeepLinks() {
    linkStream.listen((link) {
      print(link);
    });
  }

  Future<void> handleInitialDeepLink() async {
    final link = await getInitialLink();
    if (link != null) {
      print(link);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [AppRouterObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData(
        platform: TargetPlatform.iOS,
      ),
    );
  }
}
