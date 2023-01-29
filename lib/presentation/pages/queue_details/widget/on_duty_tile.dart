import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class OnDutyTile extends StatelessWidget {
  const OnDutyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) {
        var onDuty = context.read<QueueDetailsBloc>().onDuty;

        return Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Row(
            children: [
              const SizedBox(width: 15),
              UserInfo(user: onDuty),
              const Spacer(),
              Text(
                'shake',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade300,
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
        );
      },
    );
  }
}
