import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innoq/presentation/presentation.dart';

void main() {
  testWidgets('Dismiss by tap', (tester) async {
    final CustomDismissible dismissible = CustomDismissible(
      dismissibleKey: const Key('dismissible'),
      onDismissed: () {},
      isSelectionEnabled: false,
      backgroundColor: Colors.red,
      icon: Icons.circle,
      child: Container(
        height: 50,
        color: Colors.white,
      ),
    );

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: ListView(
          children: [dismissible],
        ),
      ),
    );
    await tester.pump();

    expect(find.byWidget(dismissible), findsOneWidget);

    await tester.drag(find.byWidget(dismissible), const Offset(-100, 0.0));
    await tester.pump();

    final Finder iconButton = find.byIcon(Icons.circle);
    expect(iconButton, findsOneWidget);

    await tester.tap(iconButton);
    await tester.pumpAndSettle();

    expect(find.byWidget(dismissible), findsNothing);
  });
}
