import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
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

  void _handleJoinLink(Uri link) {
    if (link.pathSegments[0] == 'join') {
      _appRouter.push(
        JoinInProressRoute(qrCode: link.pathSegments[1]),
      );
    }
  }
}
