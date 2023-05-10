import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:innoq/data/analytics/fb_analytics.dart';

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

  var settings = [
    "Notify when someone completes a task",
    "Notify when someone skips a task",
    "Notify when someone joins a queue",
    "Notify when someone freezes a queue",
    "Notify when someone leaves a queue",
    "Notify when it's your turn",
  ]; // todo : fix this

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
                // todo: maybe use a listview.builder (onChanged we can define in the setting[i] object)
                NotificationTile(
                  name: settings[0],
                  value: notificationSettings!.completed,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(completed: value);
                    getIt.get<FBAnalytics>().logNotificationSettingsUpdated(
                          setting: settings[0],
                          newValue: value,
                        );
                  }),
                ),
                NotificationTile(
                  name: settings[1],
                  value: notificationSettings!.skipped,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(skipped: value);
                    getIt.get<FBAnalytics>().logNotificationSettingsUpdated(
                          setting: settings[1],
                          newValue: value,
                        );
                  }),
                ),
                NotificationTile(
                  name: settings[2],
                  value: notificationSettings!.joinedQueue,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(joinedQueue: value);
                    getIt.get<FBAnalytics>().logNotificationSettingsUpdated(
                          setting: settings[2],
                          newValue: value,
                        );
                  }),
                ),
                NotificationTile(
                  name: settings[3],
                  value: notificationSettings!.freeze,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(freeze: value);
                    getIt.get<FBAnalytics>().logNotificationSettingsUpdated(
                          setting: settings[3],
                          newValue: value,
                        );
                  }),
                ),
                NotificationTile(
                  name: settings[4],
                  value: notificationSettings!.leftQueue,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(leftQueue: value);
                    getIt.get<FBAnalytics>().logNotificationSettingsUpdated(
                          setting: settings[4],
                          newValue: value,
                        );
                  }),
                ),
                NotificationTile(
                  name: settings[5],
                  value: notificationSettings!.yourTurn,
                  onChanged: (value) => setState(() {
                    notificationSettings =
                        notificationSettings!.copyWith(yourTurn: value);
                    getIt.get<FBAnalytics>().logNotificationSettingsUpdated(
                          setting: settings[5],
                          newValue: value,
                        );
                  }),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  onPressed: () {
                    getIt.get<UserRepository>().updateNotificationSettings(
                          notificationSettings!,
                        );
                    getIt.get<FBAnalytics>().logNotificationSettingsSaved();
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
            activeColor: Colors.green.shade300,
            inactiveTrackColor: Colors.red.shade100,
            inactiveThumbColor: Colors.red.shade300,
          ),
        ],
      ),
    );
  }
}
