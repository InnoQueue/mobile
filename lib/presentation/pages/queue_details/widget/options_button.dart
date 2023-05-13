import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isActive = context.watch<QueueDetailsBloc>().isActive;

    return PopupMenuButton<_Option>(
      icon: const Icon(Icons.more_vert),
      splashRadius: null,
      elevation: 16,
      onSelected: (option) {
        option.onTap();
      },
      itemBuilder: (context) => [
        _Option(
          icon: Icons.exit_to_app,
          text: S.of(context).leave,
          onTap: () {
            context
                .read<QueueDetailsBloc>()
                .add(const QueueDetailsEvent.leaveQueue());
            AutoRouter.of(context).pop();
          },
        ),
        _Option(
          icon: CupertinoIcons.snow,
          text: isActive ? S.of(context).freeze : S.of(context).unfreeze,
          onTap: () {
            context.read<QueueDetailsBloc>().add(isActive
                ? const QueueDetailsEvent.freezeQueue()
                : const QueueDetailsEvent.unfreezeQueue());
          },
        ),
        _Option(
          icon: Icons.share,
          text: S.of(context).share,
          onTap: () {
            context.router.push(
              ShareQueueRoute(
                queue: context.read<QueueDetailsBloc>().currentQueue,
              ),
            );
          },
        ),
      ]
          .map(
            (e) => PopupMenuItem<_Option>(
              value: e,
              child: SizedBox(child: e),
            ),
          )
          .toList(),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onTap;
  const _Option({
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 40),
        Text(text),
      ],
    );
  }
}
