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
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.loginGuard,
  }) : super(navigatorKey);

  final LoginGuard loginGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LandingPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    QueueRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<QueueRouterArgs>(
          orElse: () => QueueRouterArgs(id: pathParams.getInt('id')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: QueueDetailsWrapperPage(
          id: args.id,
          queueInfo: args.queueInfo,
          key: args.key,
        )),
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
    ThemeRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ThemePage(),
        customRouteBuilder: modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LanguageRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const LanguagePage(),
        customRouteBuilder: modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NotificationSettingsRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const NotificationSettingsPage(),
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
    QueueDetailsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const QueueDetailsPage(),
      );
    },
    EditableQueueDetailsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EditableQueueDetailsPage(),
      );
    },
    ChooseAvatarColorRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseAvatarColorRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: ChooseAvatarColorPage(
          updateColor: args.updateColor,
          key: args.key,
        ),
        customRouteBuilder: modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LandingRoute.name,
          path: '/',
          guards: [loginGuard],
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
          LoginRoute.name,
          path: 'login',
        ),
        RouteConfig(
          QueueRouter.name,
          path: '/queue:id',
          children: [
            RouteConfig(
              QueueDetailsRoute.name,
              path: '',
              parent: QueueRouter.name,
            ),
            RouteConfig(
              EditableQueueDetailsRoute.name,
              path: 'edit',
              parent: QueueRouter.name,
            ),
            RouteConfig(
              ChooseAvatarColorRoute.name,
              path: 'choose_avatar_color',
              parent: QueueRouter.name,
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
        RouteConfig(
          ThemeRoute.name,
          path: 'theme',
        ),
        RouteConfig(
          LanguageRoute.name,
          path: 'language',
        ),
        RouteConfig(
          NotificationSettingsRoute.name,
          path: 'notification_settings',
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
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [QueueDetailsWrapperPage]
class QueueRouter extends PageRouteInfo<QueueRouterArgs> {
  QueueRouter({
    required int id,
    QueueInfo? queueInfo,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          QueueRouter.name,
          path: '/queue:id',
          args: QueueRouterArgs(
            id: id,
            queueInfo: queueInfo,
            key: key,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'QueueRouter';
}

class QueueRouterArgs {
  const QueueRouterArgs({
    required this.id,
    this.queueInfo,
    this.key,
  });

  final int id;

  final QueueInfo? queueInfo;

  final Key? key;

  @override
  String toString() {
    return 'QueueRouterArgs{id: $id, queueInfo: $queueInfo, key: $key}';
  }
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
/// [ThemePage]
class ThemeRoute extends PageRouteInfo<void> {
  const ThemeRoute()
      : super(
          ThemeRoute.name,
          path: 'theme',
        );

  static const String name = 'ThemeRoute';
}

/// generated route for
/// [LanguagePage]
class LanguageRoute extends PageRouteInfo<void> {
  const LanguageRoute()
      : super(
          LanguageRoute.name,
          path: 'language',
        );

  static const String name = 'LanguageRoute';
}

/// generated route for
/// [NotificationSettingsPage]
class NotificationSettingsRoute extends PageRouteInfo<void> {
  const NotificationSettingsRoute()
      : super(
          NotificationSettingsRoute.name,
          path: 'notification_settings',
        );

  static const String name = 'NotificationSettingsRoute';
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

/// generated route for
/// [QueueDetailsPage]
class QueueDetailsRoute extends PageRouteInfo<void> {
  const QueueDetailsRoute()
      : super(
          QueueDetailsRoute.name,
          path: '',
        );

  static const String name = 'QueueDetailsRoute';
}

/// generated route for
/// [EditableQueueDetailsPage]
class EditableQueueDetailsRoute extends PageRouteInfo<void> {
  const EditableQueueDetailsRoute()
      : super(
          EditableQueueDetailsRoute.name,
          path: 'edit',
        );

  static const String name = 'EditableQueueDetailsRoute';
}

/// generated route for
/// [ChooseAvatarColorPage]
class ChooseAvatarColorRoute extends PageRouteInfo<ChooseAvatarColorRouteArgs> {
  ChooseAvatarColorRoute({
    required void Function(String) updateColor,
    Key? key,
  }) : super(
          ChooseAvatarColorRoute.name,
          path: 'choose_avatar_color',
          args: ChooseAvatarColorRouteArgs(
            updateColor: updateColor,
            key: key,
          ),
        );

  static const String name = 'ChooseAvatarColorRoute';
}

class ChooseAvatarColorRouteArgs {
  const ChooseAvatarColorRouteArgs({
    required this.updateColor,
    this.key,
  });

  final void Function(String) updateColor;

  final Key? key;

  @override
  String toString() {
    return 'ChooseAvatarColorRouteArgs{updateColor: $updateColor, key: $key}';
  }
}
