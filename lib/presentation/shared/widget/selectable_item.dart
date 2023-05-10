import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bloc.dart';

class SelectableItemBackground extends StatelessWidget {
  const SelectableItemBackground({
    super.key,
    required this.child,
    required this.id,
  });

  final Widget child;
  final int id;

  @override
  Widget build(BuildContext context) {
    SelectionBloc selectionBloc = context.watch<SelectionBloc>();
    bool isSelected = selectionBloc.selectedIds.contains(id);
    bool isAnythingSelected = selectionBloc.selectedIds.isNotEmpty;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onLongPress: () {
        selectionBloc.add(SelectionEvent.select(id));
        HapticFeedback.lightImpact();
      },
      onTap: () {
        if (isSelected) {
          selectionBloc.add(SelectionEvent.unselect(id));
          HapticFeedback.lightImpact();
        } else if (selectionBloc.selectedIds.isNotEmpty) {
          selectionBloc.add(SelectionEvent.select(
            id,
          ));
          HapticFeedback.lightImpact();
        }
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: isSelected
                    ? Colors.blue.shade100.withOpacity(0.1)
                    : Colors.white.withOpacity(0),
              ),
            ),
          ),
          AnimatedHorizontalTranslate(
            offset: isAnythingSelected ? 35 : 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  child,
                  Transform.translate(
                    offset: const Offset(-25, 0),
                    child: Container(
                      width: 25,
                      alignment: Alignment.center,
                      child: _SelectionIndicator(
                        isSelected: isSelected,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectableItemContent extends StatelessWidget {
  const SelectableItemContent({
    super.key,
    required this.id,
    required this.child,
  });

  final Widget child;
  final int id;

  @override
  Widget build(BuildContext context) {
    SelectionBloc selectionBloc = context.watch<SelectionBloc>();
    bool isSelected = selectionBloc.selectedIds.contains(id);
    Color cardColor = context.watch<AppThemeCubit>().state.cardColor;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.symmetric(
        vertical: 14,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected
              ? Color.alphaBlend(Colors.blue.withOpacity(0.05), cardColor)
              : cardColor,
          width: 0,
        ),
        color: isSelected
            ? Color.alphaBlend(Colors.blue.withOpacity(0.05), cardColor)
            : cardColor,
      ),
      child: child,
    );
  }
}

class _SelectionIndicator extends StatelessWidget {
  const _SelectionIndicator({
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: isSelected ? Colors.green.shade300 : Colors.white.withOpacity(0),
        border: Border.all(
          width: 1.5,
          color: Colors.white,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: FittedBox(
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isSelected ? 1 : 0,
            child: AnimatedScale(
              scale: isSelected ? 1 : 0,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOutBack,
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedHorizontalTranslate extends StatefulWidget {
  const AnimatedHorizontalTranslate({
    super.key,
    required this.offset,
    required this.child,
  });

  final double offset;
  final Widget child;

  @override
  State<AnimatedHorizontalTranslate> createState() =>
      _AnimatedHorizontalTranslateState();
}

class _AnimatedHorizontalTranslateState
    extends State<AnimatedHorizontalTranslate>
    with SingleTickerProviderStateMixin {
  late double _currentOffset = widget.offset;

  late final AnimationController _controller;

  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    )..addListener(() {
        if (mounted) {
          setState(() {
            _currentOffset = animation.value;
          });
        }
      });
  }

  @override
  void didUpdateWidget(covariant AnimatedHorizontalTranslate oldWidget) {
    super.didUpdateWidget(oldWidget);
    animation = Tween<double>(begin: _currentOffset, end: widget.offset)
        .animate(_controller);
    _controller.reset();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(_currentOffset, 0),
      child: widget.child,
    );
  }
}
