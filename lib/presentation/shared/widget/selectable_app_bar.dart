import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bloc.dart';

class SelectableAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SelectableAppBar({
    super.key,
    required this.title,
    required this.action,
  }) : preferredSize = const Size.fromHeight(56);

  @override
  final Size preferredSize;
  final String title;
  final Widget action;

  @override
  SelectableAppBarState createState() => SelectableAppBarState();
}

class SelectableAppBarState extends State<SelectableAppBar> {
  @override
  Widget build(BuildContext context) {
    final SelectionBloc selectionBloc = context.watch<SelectionBloc>();
    bool isAnythingSelected = selectionBloc.selectedIds.isNotEmpty;

    return AppBar(
      elevation: 0,
      title: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedScale(
                duration: const Duration(milliseconds: 300),
                scale: isAnythingSelected ? 1 : 0,
                curve: Curves.easeInOutBack,
                child: isAnythingSelected
                    ? const Icon(Icons.close)
                    : const SizedBox(),
              ),
              const SizedBox(width: 16),
              AnimatedScale(
                duration: const Duration(milliseconds: 300),
                scale: isAnythingSelected ? 1 : 0,
                curve: Curves.easeInOutBack,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: Text(
                    selectionBloc.selectedIds.length.toString(),
                    key: Key(
                      '${widget.title}_${selectionBloc.selectedIds.length.toString()}',
                    ),
                  ),
                ),
              ),
              const Spacer(),
              AnimatedScale(
                duration: const Duration(milliseconds: 300),
                scale: isAnythingSelected ? 1 : 0,
                curve: Curves.easeInOutBack,
                child: widget.action,
              ),
            ],
          ),
          Center(
            child: Text(
              widget.title,
            ),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      centerTitle: true,
    );
  }
}
