import 'package:flutter/material.dart';
import 'package:innoq/domain/repositories/user_repository/user_repository.dart';

import '../../../../application/application.dart';
import '../../../presentation.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: TextEditingController()
        ..text = getIt.get<UserRepository>().getUser()?.userName ?? '',
      onChanged: (value) {},
      onSubmitted: (value) {
        getIt.get<UserRepository>().changeName(value);
      },
      hintText: 'Your name',
      keyBoardType: TextInputType.name,
    );
  }
}
