import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation.dart';

class JoinQueuePage extends StatelessWidget {
  const JoinQueuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: context.watch<AppThemeCubit>().state.themeData.cardColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Scan QR code',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            QrScanner(),
            SizedBox(height: 10),
            Text(
              'or',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Enter PIN code',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            PinCodeField(),
          ],
        ),
      ),
    );
  }
}
