import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';

import '../../../../domain/domain.dart';
import '../../../presentation.dart';

class QrExport extends StatelessWidget {
  const QrExport({
    super.key,
    required this.queue,
    required this.invitation,
  });

  final QueueModel queue;
  final InvitationModel? invitation;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 350,
      height: 500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            colorSaturation(queueColor.darker(60), 0.6).lighter(40),
            colorSaturation(queueColor.darker(20), 0.4).lighter(50),
          ],
        ),
      ),
      child: Stack(
        children: [
          Transform.rotate(
            angle: -pi / 4,
            child: OverflowBox(
              maxWidth: double.infinity,
              maxHeight: double.infinity,
              child: UnconstrainedBox(
                child: Column(
                  children: List.generate(
                    20,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        left: index.isOdd
                            ? _textWidth('$queue.queueName') / 2
                            : 0,
                      ),
                      child: Text(
                        '${queue.queueName} ' * 100,
                        style: textStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: QrWidget(
              invitation: invitation,
              queue: queue,
            ),
          ),
        ],
      ),
    );
  }

  Color get queueColor => colors[queue.queueColor]!;
  Color colorSaturation(Color color, double saturation) =>
      HSLColor.fromColor(color).withSaturation(saturation).toColor();

  TextStyle get textStyle => TextStyle(
        color: Colors.white.withOpacity(0.2),
        fontSize: 25,
        fontWeight: FontWeight.bold,
        wordSpacing: 10,
        height: 1.5,
      );

  double _textWidth(String text) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: textStyle),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size.width;
  }
}
