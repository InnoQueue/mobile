import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../application/application.dart';
import '../../../../domain/domain.dart';
import '../../../presentation.dart';

class NotificationList extends StatelessWidget {
  final List<NotificationModel> notifications;
  final bool fetchedAll;
  const NotificationList({
    required this.notifications,
    required this.fetchedAll,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        getIt.get<NotificationsBloc>().add(
              const NotificationsEvent.updateNotifications(),
            );

        return;
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) => index == notifications.length
            ? _LoadingIndicator(
                key: UniqueKey(),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: NotifiationItem(
                  notification: notifications[index],
                ),
              ),
        itemCount: notifications.length + (fetchedAll ? 0 : 1),
      ),
    );
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
    return const Center(
      child: CircularProgressIndicator(),
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
    return VisibilityDetector(
      key: Key('Notification_${notification.notificationId}'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0 && !notification.read) {
          getIt
              .get<NotificationsBloc>()
              .readNotification(notification.notificationId);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SuperText(
              getText(notification),
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
    );
  }
}

String getText(NotificationModel notificationModel) {
  String? participantName = notificationModel.participantName;
  String? queueName = notificationModel.queueName;
  int? participantId = notificationModel.participantId;

  int userId = getIt.get<UserRepository>().getUser()!.userId;

  switch (notificationModel.messageType) {
    case NotificationType.yourTurn:
      return userId == participantId
          ? "It's now your turn in queues"
              " **$queueName**"
          : "$participantName"
              " is now responsible for a queue"
              " **$queueName**";
    case NotificationType.shook:
      return "You were shaken by roommate to remind you that it is your turn in"
          " **$queueName**";
    case NotificationType.frozen:
      return userId == participantId
          ? "You froze a queue"
              " **$queueName**"
          : "$participantName"
              " froze a queue"
              " **$queueName**";
    case NotificationType.unforzen:
      return userId == participantId
          ? "You unfroze a queue"
              " **$queueName**"
          : "$participantName"
              " unfroze a queue"
              " **$queueName**";
    case NotificationType.joinedQueue:
      return userId == participantId
          ? "You joined a queue"
              " **$queueName**"
          : "$participantName"
              " joined a queue"
              " **$queueName**";
    case NotificationType.leftQueue:
      return userId == participantId
          ? "You left a queue"
              " **$queueName**"
          : "$participantName"
              " left a queue"
              " **$queueName**";
    case NotificationType.deleteQueue:
      return userId == participantId
          ? "You deleted a queue"
              " **$queueName**"
          : "$participantName"
              " deleted a queue"
              " **$queueName**";
    case NotificationType.completed:
      return userId == participantId
          ? "You completed"
              " **$queueName**"
          : "$participantName"
              " completed"
              " **$queueName**";
    case NotificationType.skipped:
      return userId == participantId
          ? "You skipped your turn in"
              " **$queueName**"
          : "$participantName"
              " skipped their turn in"
              " **$queueName**";
    case NotificationType.other:
      return notificationModel.message.toString();
    case NotificationType.update:
      return notificationModel.message.toString();
  }
}
