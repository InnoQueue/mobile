import 'package:flutter/material.dart';

class SuperText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool isNew;

  const SuperText(
    this.text, {
    Key? key,
    required this.style,
    required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textParts = text.split('**');
    return Text.rich(
      TextSpan(
        children: [
          if (isNew)
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: SizedBox(
                width: 20,
                child: Container(
                  height: 5,
                  width: 5,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ...List.generate(
            textParts.length,
            (i) => TextSpan(
              text: textParts[i],
              style: TextStyle(
                fontWeight: i.isEven ? FontWeight.normal : FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      style: style,
    );
  }
}
