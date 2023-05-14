import 'package:auto_route/auto_route.dart';
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

  testWidgets('Test queue edition', (tester) async {
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

    // tap edit button
    final editButton = find.byIcon(Icons.edit);
    await tester.tap(editButton);
    await tester.runAsync(() async {
      for (int i = 0; i < 3; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    // change queue name
    final textFiled = find.byType(TextField);
    await tester.enterText(textFiled, 'Second');
    await tester.pump();

    // change track expenses status
    final trackExpensesSwitch = find.byType(Switch);
    await tester.tap(trackExpensesSwitch);
    await tester.pump();

    // remove Bob
    final removeButton = find.byIcon(Icons.close);
    await tester.tap(removeButton);
    await tester.pump();

    // save Bob
    final doneButton = find.byIcon(Icons.done);
    await tester.tap(doneButton);
    await tester.pump();

    // wait
    await tester.runAsync(() async {
      for (int i = 0; i < 3; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    // ensure name changed
    expect(find.text('Second'), findsWidgets);

    // ensure Bob is over
    expect(find.text('Bob'), findsNothing);
  });
}
