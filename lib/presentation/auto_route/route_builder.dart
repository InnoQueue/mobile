import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' as mbsh;

import '../presentation.dart';

Route<T> modalSheetBuilder<T>(
  BuildContext _,
  Widget child,
  CustomPage<T> page,
) {
  return mbsh.ModalBottomSheetRoute(
    expanded: false,
    settings: page,
    duration: page.name == ChooseAvatarColorRoute.name
        ? const Duration(milliseconds: 700)
        : null,
    builder: (context) {
      return child;
    },
    containerBuilder: (context, animation, child) {
      return Scaffold(
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
                      color: context.watch<AppThemeCubit>().state.labelPrimary,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: context
                          .watch<AppThemeCubit>()
                          .state
                          .themeData
                          .cardColor,
                    ),
                    child: child,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
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
      return ScaffoldMessenger(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => Navigator.of(context).pop(),
            child: GestureDetector(
              onTap: () {},
              child: Center(child: child),
            ),
          ),
        ),
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
