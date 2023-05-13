import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innoq/application/application.dart';
import 'package:innoq/domain/domain.dart';
import 'package:innoq/presentation/presentation.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await configureDependencies('test');
  });

  testWidgets('Test login', (tester) async {
    final appRouter = AppRouter(
      loginGuard: LoginGuard(),
    );

    await tester.pumpWidget(
      MaterialApp.router(
        routerDelegate: AutoRouterDelegate(
          appRouter,
        ),
        routeInformationParser: appRouter.defaultRouteParser(),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: const Locale('en'),
      ),
    );
    await tester.pump();

    final textField = find.byType(TextField);
    final loginButton = find.byType(ElevatedButton);

    //text-field and login button found
    expect(textField, findsOneWidget);
    expect(loginButton, findsOneWidget);

    await tester.enterText(textField, 'Tom');
    await tester.pump();

    await tester.tap(loginButton);
    for (int i = 0; i < 5; i++) {
      await tester.pump(const Duration(seconds: 1));
    }

    //ensure the user exists
    expect(getIt.get<UserRepository>().getUser() != null, true);

    //ensure we've been redirected to tasks page
    final title =
        find.descendant(of: find.byType(AppBar), matching: find.text('Tasks'));
    expect(title, findsOneWidget);
  });
}
