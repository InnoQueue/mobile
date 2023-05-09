import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomDismissible extends StatefulWidget {
  const CustomDismissible({
    super.key,
    required this.child,
    required this.dismissibleKey,
    required this.onDismissed,
  });

  final Widget child;
  final Key dismissibleKey;
  final void Function() onDismissed;

  @override
  State<CustomDismissible> createState() => _CustomDismissibleState();
}

class _CustomDismissibleState extends State<CustomDismissible> {
  double _ratio = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double extentPercentage = (_ratio.abs() / (100 / constraints.maxWidth));

        double circleRatio = extentPercentage <= 1
            ? Curves.easeInOutBack
                .transform(extentPercentage.clamp(0, 1))
                .clamp(0, 2)
            : pow(extentPercentage, 1.5).toDouble();

        return Slidable(
          key: widget.dismissibleKey,
          endActionPane: ActionPane(
            extentRatio: 100 / constraints.maxWidth,
            motion: const BehindMotion(),
            dismissible: DismissiblePane(
              onDismissed: widget.onDismissed,
              confirmDismiss: () async {
                return true;
              },
            ),
            children: [
              CustomSlidableAction(
                onPressed: (context) {
                  Slidable.of(context)
                      ?.dismiss(
                        ResizeRequest(
                          const Duration(milliseconds: 250),
                          () {},
                        ),
                        curve: Curves.decelerate,
                      )
                      .then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 250),
                          widget.onDismissed,
                        ),
                      );
                },
                autoClose: false,
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.scale(
                      scale: circleRatio,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red.shade400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50 * min(circleRatio, 1),
                      width: 50 * min(circleRatio, 1),
                      child: Center(
                        child: FittedBox(
                          child: Opacity(
                            opacity: Curves.easeInCubic.transform(
                              extentPercentage.clamp(0, 1),
                            ),
                            child: const Icon(
                              Icons.delete_outline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          child: Builder(builder: (context) {
            _addListener(context);

            return Opacity(
              opacity: (_ratio.abs() < 0.5 ? 1 : 1 - (_ratio.abs() - 0.5) / 0.5)
                  .clamp(0, 1)
                  .toDouble(),
              child: widget.child,
            );
          }),
        );
      },
    );
  }

  bool _listenerAdded = false;
  void _addListener(BuildContext context) {
    if (!_listenerAdded) {
      Slidable.of(context)?.animation.addListener(() {
        if (_ratio != Slidable.of(context)?.ratio) {
          setState(() {
            _ratio = Slidable.of(context)?.ratio ?? 0;
          });
        }
      });
      _listenerAdded = true;
    }
  }
}
