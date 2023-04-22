import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';

import '../presentation.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';

export 'auto_route_guards.dart';
export 'auto_route_observer.dart';
export 'route_builder.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: LandingPage,
      initial: true,
      guards: [LoginGuard],
      children: [
        AutoRoute(
          path: 'todos',
          name: 'TodosRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: TasksPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'queues',
          name: 'QueuesRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: QueuesPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'notifications',
          name: 'NotificationsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: NotificationsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: SettingsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: 'login',
      page: LoginPage,
    ),
    AutoRoute(
      path: '/queue/:id',
      name: 'QueueRouter',
      page: QueueDetailsWrapperPage,
      children: [
        AutoRoute(path: '', page: QueueDetailsPage),
        AutoRoute(path: 'edit', page: EditableQueueDetailsPage),
        CustomRoute(
          path: 'choose_avatar_color',
          page: ChooseAvatarColorPage,
          customRouteBuilder: modalSheetBuilder,
        ),
      ],
    ),
    CustomRoute(
      path: 'add_queue',
      page: AddQueuePage,
      customRouteBuilder: modalSheetBuilder,
    ),
    CustomRoute(
      path: 'share_dialog',
      page: ShareQueuePage,
      customRouteBuilder: dialogBuilder,
    ),
    CustomRoute(
      path: 'join_dialog',
      page: JoinQueuePage,
      customRouteBuilder: dialogBuilder,
    ),
    CustomRoute(
      path: 'join/:qrCode',
      page: JoinInProressPage,
    ),
    CustomRoute(
      path: 'add_progress',
      page: AddProgressPage,
      customRouteBuilder: modalSheetBuilder,
    ),
    CustomRoute(
      path: 'filters',
      page: FiltersPage,
      customRouteBuilder: modalSheetBuilder,
    ),
    CustomRoute(
      path: 'theme',
      page: ThemePage,
      customRouteBuilder: modalSheetBuilder,
    ),
    CustomRoute(
      path: 'language',
      page: LanguagePage,
      customRouteBuilder: modalSheetBuilder,
    ),
    CustomRoute(
      path: 'notification_settings',
      page: NotificationSettingsPage,
      customRouteBuilder: modalSheetBuilder,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({
    required super.loginGuard,
  });
}
