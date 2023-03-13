import 'package:flutter/material.dart';

import '../../presentation.dart';

class SelectionList extends StatelessWidget {
  final int? selectedIndex;
  final String Function(int index) nameBuilder;
  final void Function(int index) onTap;
  final int length;
  final bool applyButtonPresent;
  final void Function()? onApplyButtonPressed;
  final String title;
  const SelectionList({
    required this.selectedIndex,
    required this.nameBuilder,
    required this.onTap,
    required this.length,
    required this.title,
    this.applyButtonPresent = true,
    this.onApplyButtonPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets.add(
            const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
          ),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...List.generate(
            length,
            (index) => SizedBox(
              height: 50,
              child: Row(
                children: [
                  Text(
                    nameBuilder(index),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  _SelectionButton(
                    selected: index == selectedIndex,
                    onTap: () {
                      onTap(index);
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          if (applyButtonPresent)
            CustomButton(
              onPressed: onApplyButtonPressed,
              backgroundColor: Colors.grey.shade900,
              text: 'Apply sorting',
            ),
        ],
      ),
    );
  }
}

class _SelectionButton extends StatelessWidget {
  final void Function() onTap;
  final bool selected;
  const _SelectionButton({
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 23,
            width: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: selected
                    ? Colors.orangeAccent.shade400
                    : Colors.grey.shade300,
                width: 2,
              ),
            ),
          ),
          if (selected)
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.orangeAccent.shade400,
              ),
            ),
        ],
      ),
    );
  }
}
