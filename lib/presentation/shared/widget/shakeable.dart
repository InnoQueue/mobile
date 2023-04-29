import 'dart:math';

import 'package:flutter/material.dart';

class Shakeable extends StatefulWidget {
  const Shakeable({
    super.key,
    required this.onControllerCreated,
    required this.child,
  });

  final void Function(AnimationController) onControllerCreated;
  final Widget child;

  @override
  State<Shakeable> createState() => _ShakeableState();
}

class _ShakeableState extends State<Shakeable>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animationController.addStatusListener(_updateStatus);
    widget.onControllerCreated(animationController);
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
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        final sineValue = sin(2 * 2 * pi * animationController.value);
        return Transform.translate(
          offset: Offset(sineValue * 5, 0),
          child: widget.child,
        );
      },
    );
  }
}
