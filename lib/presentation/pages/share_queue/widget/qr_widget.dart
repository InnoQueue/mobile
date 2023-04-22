import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../domain/domain.dart';
import '../../../presentation.dart';

class QrWidget extends StatelessWidget {
  const QrWidget({
    super.key,
    required this.invitation,
    required this.queue,
  });

  final InvitationModel? invitation;
  final QueueModel queue;

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
                    queue.queueName,
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
                if (invitation != null)
                  QrImage(
                    data: invitation!.qrCode,
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
                if (invitation != null)
                  Text(
                    invitation!.pinCode,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
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
              color: colors[queue.queueColor],
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
        queueColor.darker(20),
      ],
      tileMode: TileMode.decal,
    ).createShader(bounds);
  }

  Color get queueColor => colors[queue.queueColor]!;
}
