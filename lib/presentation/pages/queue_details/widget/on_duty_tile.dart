import 'dart:math';

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
  late final animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
  );

  @override
  void initState() {
    super.initState();
    animationController.addStatusListener(_updateStatus);
  }

  @override
  void dispose() {
    animationController.removeStatusListener(_updateStatus);
    super.dispose();
  }

  void _updateStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      animationController.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) {
        var onDuty = context.read<QueueDetailsBloc>().onDuty;
        var isMyTurn = context.read<QueueDetailsBloc>().isMyTurn;

        return AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            final sineValue = sin(2 * 2 * pi * animationController.value);
            return Transform.translate(
              offset: Offset(sineValue * 5, 0),
              child: Container(
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
                    if (!isMyTurn)
                      GestureDetector(
                        onTap: () {
                          animationController.forward();
                          HapticFeedback.mediumImpact();
                          context.read<QueueDetailsBloc>().shakeUser();
                        },
                        child: Text(
                          'shake',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade300,
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
      },
    );
  }
}
