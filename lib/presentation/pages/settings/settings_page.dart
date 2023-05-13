import 'package:flutter/material.dart';

import '../../presentation.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(S.of(context).settings),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          NameTextField(),
          SizedBox(height: 20),
          SettingsList(),
        ],
      ),
    );
  }
}
