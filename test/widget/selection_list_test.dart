import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innoq/presentation/presentation.dart';

void main() {
  testWidgets('Test Selection List tap', (tester) async {
    int? selectedIndex;

    final SelectionList selectionList = SelectionList(
      selectedIndex: null,
      nameBuilder: (index) => index.toString(),
      onTap: (index) {
        selectedIndex = index;
      },
      length: 2,
      title: 'Numbers',
    );

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: selectionList,
      ),
    );
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsOneWidget);

    final selectionButton = find.byType(SelectionButton);

    await tester.tap(selectionButton.first);
    await tester.pumpAndSettle();

    expect(selectedIndex == 0, true);

    await tester.tap(selectionButton.last);
    await tester.pumpAndSettle();

    expect(selectedIndex == 1, true);
  });

  testWidgets('Test Selection Button Layout', (tester) async {
    final SelectionList selectionList = SelectionList(
      selectedIndex: 0,
      nameBuilder: (index) => index.toString(),
      onTap: (index) {},
      length: 2,
      title: 'Numbers',
    );

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: selectionList,
      ),
    );
    await tester.pump();

    final selectionButton = find.byType(SelectionButton);

    expect(
      (selectionButton.first.evaluate().first.widget as SelectionButton)
          .selected,
      true,
    );

    expect(
      (selectionButton.last.evaluate().first.widget as SelectionButton)
          .selected,
      false,
    );
  });

  testWidgets('Test Selection Button Apply Button', (tester) async {
    bool pressed = false;

    final SelectionList selectionList = SelectionList(
      selectedIndex: 0,
      nameBuilder: (index) => index.toString(),
      onTap: (index) {},
      length: 2,
      title: 'Numbers',
      applyButtonPresent: true,
      applyButtonTitle: 'Apply',
      onApplyButtonPressed: () {
        pressed = true;
      },
    );

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: selectionList,
      ),
    );
    await tester.pump();
    expect(find.text('Apply'), findsOneWidget);

    await tester.tap(find.text('Apply'));
    await tester.pumpAndSettle();

    expect(pressed, true);
  });
}
