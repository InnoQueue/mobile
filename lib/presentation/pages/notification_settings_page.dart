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

  late List<String> settings = [
    S.of(context).taskCompleteNotification,
    S.of(context).taskSkippedNotification,
    S.of(context).queueJoinedNotification,
    S.of(context).queueFrozenNotification,
    S.of(context).queueLeftNotification,
    S.of(context).yourTurnNotification,
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
                Text(
                  S.of(context).notificationSettings,
                  style: const TextStyle(
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
                    getIt
                        .get<AnalyticsRepository>()
                        .logNotificationSettingsUpdated(
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
                    getIt
                        .get<AnalyticsRepository>()
                        .logNotificationSettingsUpdated(
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
                    getIt
                        .get<AnalyticsRepository>()
                        .logNotificationSettingsUpdated(
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
                    getIt
                        .get<AnalyticsRepository>()
                        .logNotificationSettingsUpdated(
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
                    getIt
                        .get<AnalyticsRepository>()
                        .logNotificationSettingsUpdated(
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
                    getIt
                        .get<AnalyticsRepository>()
                        .logNotificationSettingsUpdated(
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
                    getIt
                        .get<AnalyticsRepository>()
                        .logNotificationSettingsSaved();
                    context.router.pop();
                  },
                  backgroundColor: Colors.grey.shade900,
                  text: S.of(context).save,
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
          Expanded(
            child: Text(name),
          ),
          const SizedBox(width: 20),
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
