import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innoq/application/application.dart';
import 'package:innoq/presentation/presentation.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({
      'user': '{"userId": 0, "token": "1", "fcmToken": "1", "userName": "Tom"}',
    });
    await configureDependencies('test');
  });

  testWidgets('Queue freezing test', (tester) async {
    final appRouter = AppRouter(
      loginGuard: LoginGuard(),
    );

    await tester.pumpWidget(
      BlocProvider(
        create: (context) => AppThemeCubit(Theme.of(context)),
        child: MaterialApp.router(
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
      ),
    );

    //wait
    await tester.runAsync(() async {
      for (int i = 0; i < 3; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    //ensure we've landed on the tasks page
    final title = find.descendant(
      of: find.byType(AppBar),
      matching: find.text('Tasks'),
    );
    expect(title, findsOneWidget);

    //finding queue button
    final queueButton = find.text('Queues');
    await tester.tap(queueButton);

    //wait
    await tester.runAsync(() async {
      for (int i = 0; i < 3; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    // ensure a task exist
    final task = find.byType(QueueItem);
    expect(task, findsOneWidget);

    // open task details
    await tester.tap(task);
    await tester.runAsync(() async {
      for (int i = 0; i < 3; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    // tap more button
    final editButton = find.byIcon(Icons.more_vert);
    await tester.tap(editButton);
    await tester.pumpAndSettle();

    final freezeButton = find.text('Freeze');
    await tester.tap(freezeButton);

    await tester.runAsync(() async {
      for (int i = 0; i < 3; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    //ensure queue is frozen
    expect(
      find.descendant(
        of: find.byType(QueueHeading),
        matching: find.byIcon(CupertinoIcons.snow),
      ),
      findsWidgets,
    );

    await tester.tap(editButton);
    await tester.pumpAndSettle();

    final unfreezeButton = find.text('Unfreeze');
    await tester.tap(unfreezeButton);

    await tester.runAsync(() async {
      for (int i = 0; i < 5; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    //ensure queue is not frozen
    expect(
      find.descendant(
        of: find.byType(QueueHeading),
        matching: find.byIcon(CupertinoIcons.snow),
      ),
      findsNothing,
    );
  });
}
