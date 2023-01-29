import 'package:flutter/material.dart';

import '../../../../domain/domain.dart';

class UserInfo extends StatelessWidget {
  final UserModel user;
  const UserInfo({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(user.userName),
        const SizedBox(height: 5),
        Text(
          '${user.expenses}₽ spent',
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
