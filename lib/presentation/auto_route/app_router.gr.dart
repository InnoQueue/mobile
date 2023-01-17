// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LandingPage(),
      );
    },
    TasksRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TasksPage(),
      );
    },
    QueuesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const QueuesPage(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NotificationsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LandingRoute.name,
          path: '/',
          children: [
            RouteConfig(
              TasksRoute.name,
              path: 'todos',
              parent: LandingRoute.name,
            ),
            RouteConfig(
              QueuesRoute.name,
              path: 'queues',
              parent: LandingRoute.name,
            ),
            RouteConfig(
              NotificationsRoute.name,
              path: 'notifications',
              parent: LandingRoute.name,
            ),
            RouteConfig(
              SettingsRoute.name,
              path: 'settings',
              parent: LandingRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute({List<PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [TasksPage]
class TasksRoute extends PageRouteInfo<void> {
  const TasksRoute()
      : super(
          TasksRoute.name,
          path: 'todos',
        );

  static const String name = 'TasksRoute';
}

/// generated route for
/// [QueuesPage]
class QueuesRoute extends PageRouteInfo<void> {
  const QueuesRoute()
      : super(
          QueuesRoute.name,
          path: 'queues',
        );

  static const String name = 'QueuesRoute';
}

/// generated route for
/// [NotificationsPage]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: 'notifications',
        );

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}
