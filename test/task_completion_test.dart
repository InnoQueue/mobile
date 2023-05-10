import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  testWidgets('Test task completion', (tester) async {
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

    //ensure there is a task
    final task = find.byType(TaskItem);
    expect(task, findsWidgets);

    final taskName = (task.evaluate().first.widget as TaskItem).task.queueName;
    final checkBox = find.byType(
      CompleteButton,
      skipOffstage: false,
    );

    //remove the task
    await tester.tap(checkBox);

    //wait
    await tester.runAsync(() async {
      await Future.delayed(const Duration(milliseconds: 500));
      await tester.pump();
    });

    //bring task back
    await tester.tap(checkBox);

    //wait
    await tester.runAsync(() async {
      await Future.delayed(const Duration(seconds: 5));
      await tester.pump();
    });

    //ensure the task was uncompleted
    expect(task, findsWidgets);

    //remove the task again
    await tester.tap(checkBox);

    //wait
    await tester.runAsync(() async {
      await Future.delayed(const Duration(seconds: 5));
      await tester.pump();
    });

    //ensure the task is not present
    final removedTask = find.descendant(
      of: find.byType(TaskItem),
      matching: find.text(taskName),
      skipOffstage: false,
    );
    expect(removedTask, findsNothing);
  });
}
