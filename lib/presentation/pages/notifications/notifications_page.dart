import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/application.dart';
import '../../../data/analytics/fb_analytics.dart';
import '../../presentation.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
      create: (context) => getIt.get<NotificationsBloc>()
        ..add(
          const NotificationsEvent.fetchNotifications(),
        ),
      child: BlocListener<FirebaseNotifcationsCubit, RemoteMessage?>(
        listener: (context, state) {
          if (state != null) {
            context
                .read<NotificationsBloc>()
                .add(const NotificationsEvent.updateNotifications(
                  showLoading: false,
                ));
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Notifications',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.grey.shade100,
          body: BlocBuilder<NotificationsBloc, NotificationsState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                itemsFetched: (items, fetchedAll) => NotificationList(
                  notifications: items,
                  fetchedAll: fetchedAll,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
