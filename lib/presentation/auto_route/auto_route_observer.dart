import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../application/application.dart';
import '../presentation.dart';

class AppRouterObserver extends AutoRouterObserver {
  bool notificationsOpen = false;

  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint('New route pushed: ${route.settings.name}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    if (notificationsOpen && route.name != NotificationsRouter.name) {
      markNotificationsAsRead();
    }
    notificationsOpen = route.name == NotificationsRouter.name;
    debugPrint('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    if (notificationsOpen && route.name != NotificationsRouter.name) {
      markNotificationsAsRead();
    }
    notificationsOpen = route.name == NotificationsRouter.name;
    debugPrint('Tab route re-visited: ${route.name}');
  }

  void markNotificationsAsRead() async {
    await getIt.get<NotificationsBloc>().readDisplayedNotifications();
    getIt.get<NotificationsBloc>().add(
          const NotificationsEvent.updateNotifications(showLoading: false),
        );
  }
}
