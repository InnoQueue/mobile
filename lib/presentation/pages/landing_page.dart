import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:innoq/presentation/auto_route/app_router.dart';
import 'package:innoq/presentation/bloc/bloc.dart';

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
        return _BottomNavigationBar(
          activeIndex: tabsRouter.activeIndex,
          setActiveIndex: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    required this.activeIndex,
    required this.setActiveIndex,
  });

  final int activeIndex;
  final Function(int)? setActiveIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: activeIndex,
      onTap: setActiveIndex,
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
          icon: _BellIcon(),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}

class _BellIcon extends StatefulWidget {
  const _BellIcon();

  @override
  State<_BellIcon> createState() => _BellIconState();
}

class _BellIconState extends State<_BellIcon>
    with SingleTickerProviderStateMixin {
  bool hasNotifications = false;
  late final AnimationController controller;
  late final CurvedAnimation animation = CurvedAnimation(
    parent: controller,
    curve: Curves.easeOut,
  );

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FirebaseNotifcationsCubit, RemoteMessage?>(
      listener: (context, state) {
        if (state != null && !hasNotifications) {
          controller
            ..reset()
            ..forward();
        }
        setState(() => hasNotifications = state != null);
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Transform.rotate(
            alignment: Alignment.topCenter,
            angle: sin(2 * 2 * pi * animation.value) * 0.2,
            child: const Icon(Icons.notifications),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: hasNotifications ? 1 : 0,
            child: Container(
              height: 7,
              width: 7,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
