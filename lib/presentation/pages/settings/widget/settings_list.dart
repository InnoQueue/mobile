import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innoq/presentation/presentation.dart';

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
  late final settings = [
    _SettingDTO(
      name: 'Notification Settings',
      icon: Icons.notifications_outlined,
      onTap: () {
        context.router.push(const NotificationSettingsRoute());
      },
    ),
    _SettingDTO(
      name: 'Theme',
      icon: Icons.lightbulb_outline,
      onTap: () {
        if (context.mounted) {
          context.router.push(const ThemeRoute());
        }
      },
    ),
    _SettingDTO(
      name: 'Language',
      icon: CupertinoIcons.globe,
      onTap: () {
        if (context.mounted) {
          context.router.push(const LanguageRoute());
        }
      },
    ),
    _SettingDTO(
      name: 'Leave feedback',
      icon: Icons.mail_outline,
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
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
        separatorBuilder: (context, index) => Container(
          height: 1,
          color: Colors.grey.shade200,
        ),
        itemCount: settings.length,
      ),
    );
  }
}
