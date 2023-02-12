import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class QueueHeading extends StatelessWidget {
  const QueueHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) {
        var currentQueue = context.read<QueueDetailsBloc>().currentQueue;

        return Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 30,
                child: context.read<QueueDetailsBloc>().isActive
                    ? null
                    : const Icon(
                        CupertinoIcons.snow,
                        size: 16,
                        color: Colors.grey,
                      ),
              ),
              _Avatar(color: colors[currentQueue.queueColor]!),
              const SizedBox(width: 20),
              _TaskName(currentQueue.queueName),
              const Spacer(),
              const SizedBox(width: 20),
            ],
          ),
        );
      },
    );
  }
}

class _Avatar extends StatelessWidget {
  final Color color;
  const _Avatar({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class _TaskName extends StatelessWidget {
  final String name;
  const _TaskName(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
