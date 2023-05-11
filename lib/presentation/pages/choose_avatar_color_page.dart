import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation.dart';

class ChooseAvatarColorPage extends StatefulWidget {
  final void Function(String) updateColor;
  const ChooseAvatarColorPage({
    required this.updateColor,
    super.key,
  });

  @override
  State<ChooseAvatarColorPage> createState() => _ChooseAvatarColorPageState();
}

class _ChooseAvatarColorPageState extends State<ChooseAvatarColorPage> {
  late var currentQueue = context.read<QueueDetailsBloc>().currentQueue;
  late var color = context.read<QueueDetailsBloc>().fieldsToSubmit.queueColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: MediaQuery.of(context).viewInsets.add(
                const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
              ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              const Text(
                'Choose Color',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ColorPalette(
                  onUpdate: (value) => setState(() => color = value),
                  initialColor: color,
                ),
              ),
              const SizedBox(height: 50),
              _SubmitButton(
                onPressed: () {
                  widget.updateColor(color);
                  context.router.pop();
                },
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(0, -(MediaQuery.of(context).size.height - 200) / 2),
          child: Hero(
            tag: 'avatar_hero',
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: colors[color],
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SubmitButton extends StatelessWidget {
  final void Function()? onPressed;
  const _SubmitButton({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.grey.shade900,
          ),
          foregroundColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          elevation: const MaterialStatePropertyAll(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: const Text(
          'Submit',
        ),
      ),
    );
  }
}
