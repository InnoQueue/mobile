import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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

  testWidgets('Test queue addition', (tester) async {
    final appRouter = AppRouter(
      loginGuard: LoginGuard(),
    );

    await tester.pumpWidget(
      MaterialApp.router(
        routerDelegate: AutoRouterDelegate(
          appRouter,
        ),
        routeInformationParser: appRouter.defaultRouteParser(),
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

    //ensure add button exists
    final addButton = find.byType(MainFab);
    expect(addButton, findsOneWidget);

    //tap on the button and wait
    await tester.tap(addButton);
    await tester.runAsync(() async {
      for (int i = 0; i < 5; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    //ensure 'Create a Queue' window is shown
    final createQueueTitle = find.text('Create a Queue');
    expect(createQueueTitle, findsOneWidget);
    await tester.pumpAndSettle();

    final textField = find.byType(TextField);
    await tester.enterText(textField, 'New task');
    await tester.pump();

    //finding create button
    final createButton = find.text('Create');
    await tester.ensureVisible(createButton);
    await tester.runAsync(() async {
      for (int i = 0; i < 3; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    //tapping on create button
    await tester.tap(createButton);
    await tester.pumpAndSettle();

    await tester.runAsync(() async {
      for (int i = 0; i < 3; i++) {
        await Future.delayed(const Duration(seconds: 1));
        await tester.pump();
      }
    });

    //ensure the task is created
    final createdTask = find.descendant(
      of: find.byType(QueueItem),
      matching: find.text('New task'),
    );
    expect(createdTask, findsOneWidget);
  });
}
