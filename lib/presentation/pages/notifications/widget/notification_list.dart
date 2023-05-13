import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../application/application.dart';
import '../../../../domain/domain.dart';
import '../../../presentation.dart';

class NotificationList extends StatefulWidget {
  final List<NotificationModel> notifications;
  final NotificationModel? removedBySwipe;
  final bool fetchedAll;
  const NotificationList({
    required this.notifications,
    required this.fetchedAll,
    required this.removedBySwipe,
    super.key,
  });

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  late final List<NotificationModel> _notifications =
      widget.notifications.toList();

  @override
  void didUpdateWidget(covariant NotificationList oldWidget) {
    super.didUpdateWidget(oldWidget);

    _removeWithNoAnimation(widget.removedBySwipe);

    final List<NotificationModel> removedNotifications = _notifications
        .toSet()
        .difference(widget.notifications.toSet())
        .toList();

    _removeNotifications(removedNotifications);

    final List<NotificationModel> newNotifications = widget.notifications
        .toSet()
        .difference(oldWidget.notifications.toSet())
        .toList();

    final List<NotificationModel> notificationsToAdd =
        newNotifications.toSet().difference(_notifications.toSet()).toList();

    int lengthBeforeAdding = _notifications.length;
    _notifications.addAll(notificationsToAdd);

    for (int i = 0; i < notificationsToAdd.length; i++) {
      listKey.currentState?.insertItem(lengthBeforeAdding + i);
    }

    if (!oldWidget.fetchedAll && widget.fetchedAll) {
      listKey.currentState?.removeItem(
        _notifications.length,
        (context, animation) => const SizedBox(),
        duration: Duration.zero,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        getIt.get<NotificationsBloc>().add(
              const NotificationsEvent.updateNotifications(
                showLoading: true,
              ),
            );

        return;
      },
      child: AnimatedList(
        key: listKey,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index, animation) =>
            index == _notifications.length
                ? _LoadingIndicator(
                    key: UniqueKey(),
                  )
                : NotifiationItem(
                    notification: _notifications[index],
                  ),
        initialItemCount:
            widget.notifications.length + (widget.fetchedAll ? 0 : 1),
      ),
    );
  }

  void _removeNotification(NotificationModel notification) {
    var index = _notifications.indexOf(notification);

    if (index != -1) {
      listKey.currentState?.removeItem(
        _notifications.indexOf(notification),
        (_, animation) => SizeTransition(
          axis: Axis.vertical,
          sizeFactor: animation,
          child: const SizedBox(height: 65),
        ),
        duration: const Duration(milliseconds: 200),
      );
    }

    _notifications.remove(notification);
  }

  void _removeWithNoAnimation(NotificationModel? notification) {
    if (notification == null) return;
    var index = _notifications.indexOf(notification);

    if (index != -1) {
      listKey.currentState?.removeItem(
        _notifications.indexOf(notification),
        (_, animation) => const SizedBox(),
        duration: Duration.zero,
      );
    }

    _notifications.remove(notification);
  }

  void _removeNotifications(List<NotificationModel> notifications) {
    for (final notification in notifications) {
      _removeNotification(notification);
    }
  }
}

class _LoadingIndicator extends StatefulWidget {
  const _LoadingIndicator({super.key});

  @override
  State<_LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<_LoadingIndicator> {
  @override
  void initState() {
    super.initState();
    getIt.get<NotificationsBloc>().add(
          const NotificationsEvent.fetchNotifications(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class NotifiationItem extends StatelessWidget {
  final NotificationModel notification;
  const NotifiationItem({
    required this.notification,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SelectionBloc selectionBloc = context.watch<SelectionBloc>();
    bool isAnythingSelected = selectionBloc.selectedIds.isNotEmpty;

    return VisibilityDetector(
      key: Key('Notification_${notification.notificationId}'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0 && !notification.read) {
          getIt
              .get<NotificationsBloc>()
              .markNotificationAsDisplayed(notification.notificationId);
        }
      },
      child: SelectableItemBackground(
        id: notification.notificationId,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomDismissible(
            key: Key(
              'dissmisible_notification_${notification.hashCode.toString()}',
            ),
            dismissibleKey: Key(
              'notification_${notification.hashCode.toString()}',
            ),
            onDismissed: () {
              getIt.get<NotificationsBloc>().add(
                    NotificationsEvent.removeBySwipe(
                      notification.notificationId,
                    ),
                  );
            },
            backgroundColor: Colors.red.shade300,
            icon: Icons.delete_outline,
            isSelectionEnabled: isAnythingSelected,
            child: SelectableItemContent(
              id: notification.notificationId,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SuperText(
                      getText(notification, context),
                      style: const TextStyle(fontSize: 16),
                      isNew: !notification.read,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      DateFormat('kk:mm dd.MM.yyyy')
                          .format(notification.date.toLocal()),
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String getText(
    NotificationModel notificationModel,
    BuildContext context,
  ) {
    String? participantName = notificationModel.participantName;
    String? queueName = notificationModel.queueName;
    int? participantId = notificationModel.participantId;

    int userId = getIt.get<UserRepository>().getUser()!.userId;

    switch (notificationModel.messageType) {
      case NotificationType.yourTurn:
        return userId == participantId
            ? S.of(context).yourTurn(queueName!)
            : S.of(context).theirTurn(participantName!, queueName!);
      case NotificationType.shook:
        return S.of(context).youWereShaken(queueName!);
      case NotificationType.frozen:
        return userId == participantId
            ? S.of(context).youFroze(queueName!)
            : S.of(context).theyFroze(participantName!, queueName!);
      case NotificationType.unforzen:
        return userId == participantId
            ? S.of(context).youUnfroze(queueName!)
            : S.of(context).theyUnfroze(participantName!, queueName!);
      case NotificationType.joinedQueue:
        return userId == participantId
            ? S.of(context).youJoined(queueName!)
            : S.of(context).theyJoined(participantName!, queueName!);
      case NotificationType.leftQueue:
        return userId == participantId
            ? S.of(context).youLeft(queueName!)
            : S.of(context).theyLeft(participantName!, queueName!);
      case NotificationType.deleteQueue:
        return userId == participantId
            ? S.of(context).youDeleted(queueName!)
            : S.of(context).theyDeleted(participantName!, queueName!);
      case NotificationType.completed:
        return userId == participantId
            ? S.of(context).youCompleted(queueName!)
            : S.of(context).theyCompleted(participantName!, queueName!);
      case NotificationType.skipped:
        return userId == participantId
            ? S.of(context).youSkipped(queueName!)
            : S.of(context).theySkipped(participantName!, queueName!);
      case NotificationType.other:
        return notificationModel.message.toString();
      case NotificationType.update:
        return notificationModel.message.toString();
    }
  }
}
