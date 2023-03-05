import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../presentation.dart';

class ColorPalette extends StatefulWidget {
  final void Function(String) onUpdate;
  final String? initialColor;
  const ColorPalette({
    required this.onUpdate,
    this.initialColor,
    super.key,
  });

  @override
  State<ColorPalette> createState() => _ColorPaletteState();
}

class _ColorPaletteState extends State<ColorPalette> {
  late String selectedColorKey =
      widget.initialColor ?? colors.entries.first.key;

  Offset? localPosition;
  late double width;
  late double height;

  double size = 28;
  double padding = 6;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        width = constraints.maxWidth;
        height = constraints.minHeight;
        return GestureDetector(
          onLongPressStart: (details) =>
              setState(() => localPosition = details.localPosition),
          onLongPressMoveUpdate: (details) =>
              setState(() => localPosition = details.localPosition),
          onLongPressEnd: (details) {
            if (hoveredColorKey != null) {
              widget.onUpdate(hoveredColorKey!);
              selectedColorKey = hoveredColorKey!;
            }
            setState(() => localPosition = null);
          },
          child: Wrap(
            children: colors.keys
                .map(
                  (key) => GestureDetector(
                    onTap: () {
                      widget.onUpdate(key);
                      setState(() => selectedColorKey = key);
                    },
                    child: SizedBox(
                      height: size + padding,
                      width: size + padding,
                      child: Center(
                        child: TweenAnimationBuilder(
                          tween: Tween<double>(
                            begin: 0,
                            end: key == hoveredColorKey ? 1 : 0,
                          ),
                          curve: Curves.easeOutBack,
                          duration: const Duration(milliseconds: 300),
                          builder: (context, value, child) => Transform.scale(
                            scale: 1 + value * 0.5,
                            child: Transform.translate(
                              offset: Offset(0, -25 * value),
                              child: Container(
                                height: size,
                                width: size,
                                decoration: BoxDecoration(
                                  color: colors[key],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: selectedColorKey == key
                                    ? _AnimatedCheckIcon(
                                        color: colors[key]!,
                                      )
                                    : null,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }

  int? _lastHoveredIndex;

  int? get hoveredIndex {
    if (localPosition == null) return null;

    int columns = width ~/ (size + padding);
    int rows = (colors.length / columns).ceil();

    double paletteWidth = columns * size + (columns - 1) * padding;

    double dx = (width - paletteWidth) / 2;

    int currentColumn = (localPosition!.dx - dx) ~/ (size + padding);
    int currentRow = localPosition!.dy ~/ (size + padding);

    if (currentColumn >= columns ||
        currentRow >= rows ||
        currentColumn < 0 ||
        currentRow < 0) return null;

    int result = (currentColumn + currentRow * columns);
    if (result != _lastHoveredIndex && result < colors.length) {
      HapticFeedback.lightImpact();
    }

    _lastHoveredIndex = result;
    return result;
  }

  String? get hoveredColorKey {
    if (hoveredIndex != null && hoveredIndex! < colors.length) {
      return colors.keys.toList()[hoveredIndex!];
    }

    return null;
  }
}

class _AnimatedCheckIcon extends StatefulWidget {
  final Color color;
  const _AnimatedCheckIcon({
    required this.color,
  });

  @override
  State<_AnimatedCheckIcon> createState() => _AnimatedCheckIconState();
}

class _AnimatedCheckIconState extends State<_AnimatedCheckIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..addListener(() {
        setState(() {});
      });

    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutBack,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: animation.value,
      child: Icon(
        Icons.check,
        color:
            widget.color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
        size: 20,
      ),
    );
  }
}
