import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:innoq/presentation/presentation.dart';

class ExpandableFab extends StatefulWidget {
  const ExpandableFab({super.key});

  @override
  State<ExpandableFab> createState() => _ExpandableFabState();
}

class _ExpandableFabState extends State<ExpandableFab>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    )..addListener(() {
        setState(() {});
      });

    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutBack,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Offset? localPosition;
  double qrAngle = 5 * pi / 12;
  double addAngle = pi / 12;

  @override
  Widget build(BuildContext context) {
    if (isOnMainButton) {
      if (_controller.isCompleted) {
      } else {
        if (!_controller.isAnimating) {
          HapticFeedback.lightImpact();
          _controller.forward();
        }
      }
    }

    return GestureDetector(
      onLongPressStart: (details) =>
          setState(() => localPosition = details.localPosition),
      onLongPressMoveUpdate: (details) =>
          setState(() => localPosition = details.localPosition),
      onLongPressEnd: (details) {
        if (isOnQrButton) onTapQr();
        if (isOnAddButton) onTapAdd();
        setState(() => localPosition = null);
      },
      child: SizedBox(
        height: 110,
        width: 110,
        child: Stack(
          alignment: Alignment.bottomRight,
          clipBehavior: Clip.none,
          children: [
            SecondaryFab(
              angle: qrAngle,
              isHovered: isOnQrButton,
              animationValue: animation.value,
              icon: Icons.qr_code,
              onTap: onTapQr,
            ),
            SecondaryFab(
              angle: addAngle,
              isHovered: isOnAddButton,
              animationValue: animation.value,
              icon: Icons.add,
              onTap: onTapAdd,
            ),
            MainFab(
              onTap: () {
                if (_controller.isCompleted) {
                  _controller.reverse();
                } else {
                  if (_controller.isDismissed) {
                    onTapAdd();
                  }
                }
              },
              animationValue: animation.value,
            ),
          ],
        ),
      ),
    );
  }

  void onTapQr() {
    debugPrint('qr');
  }

  void onTapAdd() {
    context.router.push(const AddQueueRoute());
    _controller.reverse();
  }

  bool get isOnMainButton {
    if (localPosition == null) return false;

    var radius = 55 / 2;
    var center = Offset(110 - radius, 110 - radius);

    return (localPosition! - center).distance.abs() < radius;
  }

  bool get isOnQrButton {
    if (localPosition == null) return false;

    var mainButtonRadius = 55 / 2;
    var center = Offset(
      110 - mainButtonRadius - cos(5 * pi / 12) * 60 * animation.value,
      110 - mainButtonRadius - sin(5 * pi / 12) * 60 * animation.value,
    );
    var radius = 40 / 2;

    return (localPosition! - center).distance.abs() < radius;
  }

  bool get isOnAddButton {
    if (localPosition == null) return false;

    var mainButtonRadius = 55 / 2;
    var center = Offset(
      110 - mainButtonRadius - cos(pi / 12) * 60 * animation.value,
      110 - mainButtonRadius - sin(pi / 12) * 60 * animation.value,
    );
    var radius = 40 / 2;

    return (localPosition! - center).distance.abs() < radius;
  }
}

class SecondaryFab extends StatefulWidget {
  final double angle;
  final bool isHovered;
  final double animationValue;
  final IconData icon;
  final void Function() onTap;
  const SecondaryFab({
    super.key,
    required this.angle,
    required this.isHovered,
    required this.animationValue,
    required this.icon,
    required this.onTap,
  });

  @override
  State<SecondaryFab> createState() => _SecondaryFabState();
}

class _SecondaryFabState extends State<SecondaryFab> {
  @override
  void didUpdateWidget(covariant SecondaryFab oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (!oldWidget.isHovered && widget.isHovered) {
      HapticFeedback.lightImpact();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        -cos(widget.angle) * 60 * widget.animationValue,
        -sin(widget.angle) * 60 * widget.animationValue,
      ),
      child: Container(
        height: 55,
        width: 55,
        alignment: Alignment.center,
        child: AnimatedScale(
          scale: widget.isHovered ? 1.35 : 1,
          curve: Curves.elasticOut,
          duration: const Duration(milliseconds: 400),
          child: Transform.scale(
            scale: widget.animationValue,
            child: _FloatingActionButton(
              onTap: widget.onTap,
              icon: Transform.rotate(
                angle: -pi / 2 * (1 - widget.animationValue),
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                ),
              ),
              color: Colors.grey.shade400,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}

class MainFab extends StatelessWidget {
  final void Function() onTap;
  final double animationValue;
  const MainFab({
    super.key,
    required this.onTap,
    required this.animationValue,
  });

  @override
  Widget build(BuildContext context) {
    return _FloatingActionButton(
      size: 55,
      onTap: onTap,
      icon: Transform.rotate(
        angle: -pi / 4 * animationValue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),
      color: Colors.grey.shade600,
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  final Widget icon;
  final double size;
  final Color color;
  final void Function()? onTap;
  const _FloatingActionButton({
    required this.icon,
    required this.size,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Material(
        color: color,
        shape: const CircleBorder(),
        child: InkWell(
          splashColor: Colors.black.withOpacity(0.2),
          onTap: onTap,
          customBorder: const CircleBorder(),
          child: Ink(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            height: size,
            width: size,
            child: icon,
          ),
        ),
      ),
    );
  }
}
