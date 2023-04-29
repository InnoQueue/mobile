import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../domain/domain.dart';
import '../../../presentation.dart';

class QrWidget extends StatefulWidget {
  const QrWidget({
    super.key,
    required this.invitation,
    required this.queue,
    this.addCopyButton = false,
    this.animate = false,
  });

  final InvitationModel? invitation;
  final QueueModel queue;
  final bool addCopyButton;
  final bool animate;

  @override
  State<QrWidget> createState() => _QrWidgetState();
}

class _QrWidgetState extends State<QrWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reset();
          _controller.forward();
        }
      });

    if (widget.animate) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: const EdgeInsets.all(20).add(
            const EdgeInsets.only(top: 20),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: ShaderMask(
            shaderCallback: shaderCallback,
            blendMode: BlendMode.srcATop,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: Text(
                    widget.queue.queueName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                if (widget.invitation != null)
                  QrImage(
                    data: widget.invitation!.qrCode,
                    size: 200,
                    foregroundColor: Colors.grey.shade900,
                  )
                else
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Shimmer(
                      child: const SizedBox(
                        height: 180,
                        width: 180,
                      ),
                    ),
                  ),
                const SizedBox(height: 10),
                if (widget.invitation != null)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.invitation!.pinCode,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (widget.addCopyButton) ...[
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () => _copyCode(context),
                          child: const Icon(Icons.copy),
                        ),
                      ],
                    ],
                  )
                else
                  Shimmer(
                    child: const SizedBox(
                      height: 23,
                      width: 100,
                    ),
                  ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -35),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colors[widget.queue.queueColor],
            ),
            height: 70,
            width: 70,
          ),
        ),
      ],
    );
  }

  Shader shaderCallback(Rect bounds) {
    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [
        queueColor.darker(60),
        queueColor.darker(10),
      ],
      tileMode: TileMode.decal,
      transform: GradientRotation(2 * pi * _controller.value),
    ).createShader(bounds);
  }

  Color get queueColor => colors[widget.queue.queueColor]!;

  void _copyCode(BuildContext context) {
    Clipboard.setData(
      ClipboardData(
        text:
            'Join "${widget.queue.queueName}" on InnoQ using this code: ${widget.invitation!.pinCode}!',
      ),
    ).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Invitation code copied to clipboard",
          ),
        ),
      );
    });
  }
}
