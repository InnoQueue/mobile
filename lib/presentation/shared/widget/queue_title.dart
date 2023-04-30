import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QueueTitle extends StatelessWidget {
  const QueueTitle({
    super.key,
    required this.queueName,
    required this.fontSize,
  });

  final String queueName;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      queueName,
      style: textStyle.copyWith(
        fontSize: fontSize,
      ),
    );
  }

  TextStyle get textStyle {
    switch (queueName) {
      case 'Taylor Swift':
        return GoogleFonts.sacramento();
      case 'Fearless':
        return GoogleFonts.montserrat();
      case 'Speak Now':
        return GoogleFonts.rochester();
      case 'RED':
        return GoogleFonts.anton();
      case '1989':
        return GoogleFonts.permanentMarker();
      case 'reputation':
        return GoogleFonts.unifrakturMaguntia();
      case 'Lover':
        return GoogleFonts.satisfy();
      case 'folklore':
      case 'evermore':
        return GoogleFonts.imFellDwPica(
          fontStyle: FontStyle.italic,
        );
      case 'Midnights':
        return GoogleFonts.openSans(
          fontWeight: FontWeight.w600,
        );
      default:
        return const TextStyle();
    }
  }
}
