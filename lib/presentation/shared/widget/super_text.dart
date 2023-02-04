import 'package:flutter/material.dart';

class SuperText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const SuperText(
    this.text, {
    Key? key,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textParts = text.split('**');
    return Text.rich(
      TextSpan(
        children: List.generate(
          textParts.length,
          (i) => TextSpan(
            text: textParts[i],
            style: TextStyle(
              fontWeight: i.isEven ? FontWeight.normal : FontWeight.bold,
            ),
          ),
        ),
      ),
      style: style,
    );
  }
}
