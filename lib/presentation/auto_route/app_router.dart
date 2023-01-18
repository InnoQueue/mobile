import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../presentation.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: LandingPage,
      children: [
        AutoRoute(
          path: 'todos',
          page: TasksPage,
        ),
        AutoRoute(
          path: 'queues',
          page: QueuesPage,
        ),
        AutoRoute(
          path: 'notifications',
          page: NotificationsPage,
        ),
        AutoRoute(
          path: 'settings',
          page: SettingsPage,
        ),
      ],
    ),
    CustomRoute(
      path: 'add_queue',
      page: AddQueuePage,
      customRouteBuilder: modalSheetBuilder,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

Route<T> modalSheetBuilder<T>(
    BuildContext context, Widget child, CustomPage<T> page) {
  return ModalBottomSheetRoute(
    backgroundColor: Colors.transparent,
    settings: page,
    builder: (context) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 20,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15),
            ),
            border: Border.all(
              color: Colors.white,
              width: 0,
            ),
          ),
          child: Center(
            child: Container(
              height: 4,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ),
        child,
      ],
    ),
    isScrollControlled: true,
  );
}
