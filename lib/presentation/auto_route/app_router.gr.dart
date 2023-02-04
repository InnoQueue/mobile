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
    AddQueueRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AddQueuePage(),
        customRouteBuilder: modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddProgressRoute.name: (routeData) {
      final args = routeData.argsAs<AddProgressRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: AddProgressPage(
          submitExpenses: args.submitExpenses,
          key: args.key,
        ),
        customRouteBuilder: modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FiltersRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const FiltersPage(),
        customRouteBuilder: modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TodosRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    QueuesRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    NotificationsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
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
    QueueDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<QueueDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: QueueDetailsPage(
          queueInfo: args.queueInfo,
          key: args.key,
        ),
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
              TodosRouter.name,
              path: 'todos',
              parent: LandingRoute.name,
              children: [
                RouteConfig(
                  TasksRoute.name,
                  path: '',
                  parent: TodosRouter.name,
                ),
                RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: TodosRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            RouteConfig(
              QueuesRouter.name,
              path: 'queues',
              parent: LandingRoute.name,
              children: [
                RouteConfig(
                  QueuesRoute.name,
                  path: '',
                  parent: QueuesRouter.name,
                ),
                RouteConfig(
                  QueueDetailsRoute.name,
                  path: 'details',
                  parent: QueuesRouter.name,
                ),
                RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: QueuesRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            RouteConfig(
              NotificationsRouter.name,
              path: 'notifications',
              parent: LandingRoute.name,
              children: [
                RouteConfig(
                  NotificationsRoute.name,
                  path: '',
                  parent: NotificationsRouter.name,
                ),
                RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: NotificationsRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: LandingRoute.name,
              children: [
                RouteConfig(
                  SettingsRoute.name,
                  path: '',
                  parent: SettingsRouter.name,
                ),
                RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: SettingsRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
          ],
        ),
        RouteConfig(
          AddQueueRoute.name,
          path: 'add_queue',
        ),
        RouteConfig(
          AddProgressRoute.name,
          path: 'add_progress',
        ),
        RouteConfig(
          FiltersRoute.name,
          path: 'filters',
        ),
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
/// [AddQueuePage]
class AddQueueRoute extends PageRouteInfo<void> {
  const AddQueueRoute()
      : super(
          AddQueueRoute.name,
          path: 'add_queue',
        );

  static const String name = 'AddQueueRoute';
}

/// generated route for
/// [AddProgressPage]
class AddProgressRoute extends PageRouteInfo<AddProgressRouteArgs> {
  AddProgressRoute({
    required void Function(double) submitExpenses,
    Key? key,
  }) : super(
          AddProgressRoute.name,
          path: 'add_progress',
          args: AddProgressRouteArgs(
            submitExpenses: submitExpenses,
            key: key,
          ),
        );

  static const String name = 'AddProgressRoute';
}

class AddProgressRouteArgs {
  const AddProgressRouteArgs({
    required this.submitExpenses,
    this.key,
  });

  final void Function(double) submitExpenses;

  final Key? key;

  @override
  String toString() {
    return 'AddProgressRouteArgs{submitExpenses: $submitExpenses, key: $key}';
  }
}

/// generated route for
/// [FiltersPage]
class FiltersRoute extends PageRouteInfo<void> {
  const FiltersRoute()
      : super(
          FiltersRoute.name,
          path: 'filters',
        );

  static const String name = 'FiltersRoute';
}

/// generated route for
/// [EmptyRouterPage]
class TodosRouter extends PageRouteInfo<void> {
  const TodosRouter({List<PageRouteInfo>? children})
      : super(
          TodosRouter.name,
          path: 'todos',
          initialChildren: children,
        );

  static const String name = 'TodosRouter';
}

/// generated route for
/// [EmptyRouterPage]
class QueuesRouter extends PageRouteInfo<void> {
  const QueuesRouter({List<PageRouteInfo>? children})
      : super(
          QueuesRouter.name,
          path: 'queues',
          initialChildren: children,
        );

  static const String name = 'QueuesRouter';
}

/// generated route for
/// [EmptyRouterPage]
class NotificationsRouter extends PageRouteInfo<void> {
  const NotificationsRouter({List<PageRouteInfo>? children})
      : super(
          NotificationsRouter.name,
          path: 'notifications',
          initialChildren: children,
        );

  static const String name = 'NotificationsRouter';
}

/// generated route for
/// [EmptyRouterPage]
class SettingsRouter extends PageRouteInfo<void> {
  const SettingsRouter({List<PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          path: 'settings',
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [TasksPage]
class TasksRoute extends PageRouteInfo<void> {
  const TasksRoute()
      : super(
          TasksRoute.name,
          path: '',
        );

  static const String name = 'TasksRoute';
}

/// generated route for
/// [QueuesPage]
class QueuesRoute extends PageRouteInfo<void> {
  const QueuesRoute()
      : super(
          QueuesRoute.name,
          path: '',
        );

  static const String name = 'QueuesRoute';
}

/// generated route for
/// [QueueDetailsPage]
class QueueDetailsRoute extends PageRouteInfo<QueueDetailsRouteArgs> {
  QueueDetailsRoute({
    required QueueInfo queueInfo,
    Key? key,
  }) : super(
          QueueDetailsRoute.name,
          path: 'details',
          args: QueueDetailsRouteArgs(
            queueInfo: queueInfo,
            key: key,
          ),
        );

  static const String name = 'QueueDetailsRoute';
}

class QueueDetailsRouteArgs {
  const QueueDetailsRouteArgs({
    required this.queueInfo,
    this.key,
  });

  final QueueInfo queueInfo;

  final Key? key;

  @override
  String toString() {
    return 'QueueDetailsRouteArgs{queueInfo: $queueInfo, key: $key}';
  }
}

/// generated route for
/// [NotificationsPage]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: '',
        );

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '',
        );

  static const String name = 'SettingsRoute';
}
