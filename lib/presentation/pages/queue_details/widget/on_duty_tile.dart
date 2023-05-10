import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class OnDutyTile extends StatefulWidget {
  const OnDutyTile({super.key});

  @override
  State<OnDutyTile> createState() => _OnDutyTileState();
}

class _OnDutyTileState extends State<OnDutyTile>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) {
        var onDuty = context.read<QueueDetailsBloc>().onDuty;
        var isMyTurn = context.read<QueueDetailsBloc>().isMyTurn;

        return Shakeable(
          onControllerCreated: (controller) {
            animationController = controller;
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: context.read<AppThemeCubit>().state.cardColor,
            ),
            child: Row(
              children: [
                const SizedBox(width: 15),
                UserInfo(user: onDuty),
                const Spacer(),
                if (!isMyTurn)
                  GestureDetector(
                    onTap: () {
                      animationController?.forward();
                      HapticFeedback.mediumImpact();
                      context.read<QueueDetailsBloc>().shakeUser();
                    },
                    child: Text(
                      'shake',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade400,
                      ),
                    ),
                  ),
                const SizedBox(width: 15),
              ],
            ),
          ),
        );
      },
    );
  }
}
