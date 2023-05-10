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
  final SelectionBloc _selectionBloc = SelectionBloc();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _selectionBloc),
        BlocProvider(
          create: (context) => getIt.get<NotificationsBloc>()
            ..add(
              const NotificationsEvent.fetchNotifications(),
            ),
        ),
      ],
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
          appBar: SelectableAppBar(
            title: 'Notifications',
            action: GestureDetector(
              onTap: () {
                final List<int> selectedNotificationIds =
                    _selectionBloc.selectedIds.toList();

                getIt.get<NotificationsBloc>().add(
                      NotificationsEvent.removeNotifications(
                        selectedNotificationIds,
                      ),
                    );

                _selectionBloc.add(const SelectionEvent.unselectAll());
              },
              child: const Icon(Icons.delete_outline),
            ),
          ),
          body: BlocBuilder<NotificationsBloc, NotificationsState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                itemsFetched: (items, fetchedAll, removedBySwipe) =>
                    NotificationList(
                  notifications: items,
                  fetchedAll: fetchedAll,
                  removedBySwipe: removedBySwipe,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
