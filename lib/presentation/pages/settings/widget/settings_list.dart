import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:innoq/application/application.dart';
import 'package:innoq/presentation/presentation.dart';

import '../../../../domain/domain.dart';

class _SettingDTO {
  final String name;
  final IconData icon;
  final void Function() onTap;

  const _SettingDTO({
    required this.name,
    required this.icon,
    required this.onTap,
  });
}

class SettingsList extends StatefulWidget {
  const SettingsList({super.key});

  @override
  State<SettingsList> createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  List<_SettingDTO> get settings => [
        _SettingDTO(
          name: S.of(context).notificationSettings,
          icon: Icons.notifications_outlined,
          onTap: () {
            getIt
                .get<AnalyticsRepository>()
                .logNotificationSettingsOpened(); // coverage:ignore-line
            context.router.push(const NotificationSettingsRoute());
          },
        ),
        _SettingDTO(
          name: S.of(context).theme,
          icon: Icons.lightbulb_outline,
          onTap: () {
            if (context.mounted) {
              getIt
                  .get<AnalyticsRepository>()
                  .logThemeSettingsOpened(); // coverage:ignore-line
              context.router.push(const ThemeRoute());
            }
          },
        ),
        _SettingDTO(
          name: S.of(context).language,
          icon: CupertinoIcons.globe,
          onTap: () {
            if (context.mounted) {
              getIt
                  .get<AnalyticsRepository>()
                  .logLanguageSettingsOpened(); // coverage:ignore-line
              context.router.push(const LanguageRoute());
            }
          },
        ),
        _SettingDTO(
          name: S.of(context).leaveFeedback,
          icon: Icons.mail_outline,
          onTap: () {
            if (context.mounted) {
              getIt // coverage:ignore-line
                  .get<AnalyticsRepository>()
                  .logLeaveFeedbackOpened();
            }
          },
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.watch<AppThemeCubit>().state.themeData.cardColor,
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => settings[index].onTap(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                const SizedBox(width: 15),
                Icon(
                  settings[index].icon,
                ),
                const SizedBox(width: 10),
                Text(settings[index].name),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(
          height: 1,
        ),
        itemCount: settings.length,
      ),
    );
  }
}
