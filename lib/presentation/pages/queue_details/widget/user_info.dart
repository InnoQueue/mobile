import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../domain/domain.dart';

class UserInfo extends StatelessWidget {
  final ParticipantModel user;
  const UserInfo({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(user.userName),
            if (!user.active)
              const Icon(
                CupertinoIcons.snow,
                size: 16,
                color: Colors.grey,
              ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          '${user.expenses}₽ spent',
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
