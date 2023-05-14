import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';
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
    handleRouteChange(route);
    debugPrint('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    handleRouteChange(route);
    debugPrint('Tab route re-visited: ${route.name}');
  }

  void markNotificationsAsRead() async {
    await getIt.get<NotificationsBloc>().readDisplayedNotifications();
    getIt.get<NotificationsBloc>().add(
          const NotificationsEvent.updateNotifications(showLoading: false),
        );
  }

  void handleRouteChange(TabPageRoute route) {
    if (notificationsOpen && route.name != NotificationsRouter.name) {
      markNotificationsAsRead();
      getIt.get<FirebaseNotifcationsCubit>().emitNoNotification();
    } else if (!notificationsOpen && route.name == NotificationsRouter.name) {
      getIt.get<FirebaseNotifcationsCubit>().emitNoNotification();
    }
    notificationsOpen = route.name == NotificationsRouter.name;

    getIt
        .get<AnalyticsRepository>()
        .logPageOpen(route.name); // coverage:ignore-line
  }
}
