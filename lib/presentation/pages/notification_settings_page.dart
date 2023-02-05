import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';
import '../presentation.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({super.key});

  @override
  State<NotificationSettingsPage> createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  NotificationSettingsModel? notificationSettings;

  @override
  void initState() {
    super.initState();
    fetchNotificationSettings();
  }

  Future<void> fetchNotificationSettings() async {
    notificationSettings =
        await getIt.get<UserRepository>().getNotificationSettings();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets.add(
            const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
          ),
      color: Colors.white,
      child: notificationSettings == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Notification settings',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                NotificationTile(
                  name: 'completed',
                  value: notificationSettings!.completed,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(completed: value);
                  }),
                ),
                NotificationTile(
                  name: 'skipped',
                  value: notificationSettings!.skipped,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(skipped: value);
                  }),
                ),
                NotificationTile(
                  name: 'joinedQueue',
                  value: notificationSettings!.joinedQueue,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(joinedQueue: value);
                  }),
                ),
                NotificationTile(
                  name: 'freeze',
                  value: notificationSettings!.freeze,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(freeze: value);
                  }),
                ),
                NotificationTile(
                  name: 'leftQueue',
                  value: notificationSettings!.leftQueue,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(leftQueue: value);
                  }),
                ),
                NotificationTile(
                  name: 'yourTurn',
                  value: notificationSettings!.yourTurn,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(yourTurn: value);
                  }),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  onPressed: () {
                    getIt.get<UserRepository>().updateNotificationSettings(
                          notificationSettings!,
                        );
                    context.router.pop();
                  },
                  backgroundColor: Colors.grey.shade900,
                  text: 'Save',
                ),
              ],
            ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String name;
  final bool value;
  final void Function(bool value) onChanged;
  const NotificationTile({
    required this.name,
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Text(name),
          const Spacer(),
          Switch(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
