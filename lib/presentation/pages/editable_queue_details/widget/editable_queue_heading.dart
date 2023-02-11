import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class EditableQueueHeading extends StatelessWidget {
  const EditableQueueHeading({super.key});

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
              const SizedBox(width: 30),
              _Avatar(color: currentQueue.queueColor),
              const SizedBox(width: 20),
              Expanded(child: _TaskName(currentQueue.queueName)),
              const SizedBox(width: 20),
            ],
          ),
        );
      },
    );
  }
}

class _Avatar extends StatefulWidget {
  final String color;
  const _Avatar({required this.color});

  @override
  State<_Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<_Avatar> {
  late var currentColor = widget.color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors[currentColor]!,
          ),
        ),
        GestureDetector(
          onTap: () {
            context.router.push(
              ChooseAvatarColorRoute(updateColor: (value) {
                context.read<QueueDetailsBloc>().updateColor(value);
                setState(() {
                  currentColor = value;
                });
              }),
            );
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade100,
            ),
            child: Center(
              child: Icon(
                Icons.edit,
                size: 14,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _TaskName extends StatefulWidget {
  final String name;
  const _TaskName(this.name);

  @override
  State<_TaskName> createState() => _TaskNameState();
}

class _TaskNameState extends State<_TaskName> {
  late var controller = TextEditingController()..text = widget.name;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      hintText: 'Queue name...',
      keyBoardType: TextInputType.name,
      onChanged: (value) {
        context.read<QueueDetailsBloc>().updateName(value);
      },
    );
  }
}
