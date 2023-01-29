import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:innoq/presentation/auto_route/app_router.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final routes = const [
    TodosRouter(),
    QueuesRouter(),
    NotificationsRouter(),
    SettingsRouter(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: routes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 14.0,
          unselectedFontSize: 14.0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.check),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Queues',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        );
      },
    );
  }
}
