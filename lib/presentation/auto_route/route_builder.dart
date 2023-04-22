import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' as mbsh;

Route<T> modalSheetBuilder<T>(
  BuildContext _,
  Widget child,
  CustomPage<T> page,
) {
  return mbsh.ModalBottomSheetRoute(
    expanded: false,
    settings: page,
    builder: (context) => Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => context.router.pop(),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  height: 4,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: child,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Route<T> dialogBuilder<T>(
  BuildContext _,
  Widget child,
  CustomPage<T> page,
) {
  return RawDialogRoute(
    settings: page,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Column(
        children: [
          Expanded(child: Center(child: child)),
          SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
        ],
      );
    },
    transitionBuilder: (_, anim, __, child) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2 * anim.value, sigmaY: 2 * anim.value),
      child: FadeTransition(
        opacity: anim,
        child: child,
      ),
    ),
  );
}
