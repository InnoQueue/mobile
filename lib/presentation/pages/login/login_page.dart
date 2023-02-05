import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:innoq/domain/domain.dart';

import '../../../application/application.dart';
import '../../presentation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                onChanged: (value) => setState(() => name = value),
                hintText: 'your name',
                keyBoardType: TextInputType.name,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () async {
                  if (name.isNotEmpty) {
                    await getIt.get<UserRepository>().registerUser(name);

                    if (context.mounted) {
                      context.router.replaceAll([const LandingRoute()]);
                    }
                  }
                },
                backgroundColor: Colors.grey.shade900,
                text: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
