import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innoq/presentation/presentation.dart';

void main() {
  testWidgets('Test color selection by drag', (tester) async {
    String? currentColor;

    final ColorPalette colorPalette = ColorPalette(
      onUpdate: (color) => currentColor = color,
    );

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: colorPalette,
      ),
    );
    await tester.pump();
    expect(find.byWidget(colorPalette), findsOneWidget);

    final TestGesture gesture =
        await tester.startGesture(const Offset(14, 20), pointer: 0);
    await tester.pumpAndSettle(const Duration(milliseconds: 500));

    await gesture.moveBy(const Offset(40, 0));
    await tester.pumpAndSettle(const Duration(milliseconds: 500));
    await gesture.up();
    await tester.pumpAndSettle();

    expect(currentColor == colors.keys.elementAt(1), true);
  });

  testWidgets('Test color selection by tap', (tester) async {
    String? currentColor;

    final ColorPalette colorPalette = ColorPalette(
      onUpdate: (color) => currentColor = color,
    );

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: colorPalette,
      ),
    );
    await tester.pump();
    expect(find.byWidget(colorPalette), findsOneWidget);

    await tester.tapAt(const Offset(54, 20));
    await tester.pumpAndSettle();

    expect(currentColor == colors.keys.elementAt(1), true);
  });
}
