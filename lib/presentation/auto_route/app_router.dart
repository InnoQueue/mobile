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
  ],
)
class AppRouter extends _$AppRouter {}
