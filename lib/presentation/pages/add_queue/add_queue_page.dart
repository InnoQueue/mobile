import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../application/application.dart';
import '../../presentation.dart';

class AddQueuePage extends StatefulWidget {
  const AddQueuePage({super.key});

  @override
  State<AddQueuePage> createState() => _AddQueuePageState();
}

class _AddQueuePageState extends State<AddQueuePage> {
  String name = '';
  String color = colors.entries.first.key;
  bool trackExpenses = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(
            S.of(context).createQueue,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomTextField(
            hintText: S.of(context).inputName,
            onChanged: (value) => setState(() => name = value),
            keyBoardType: TextInputType.name,
          ),
          const SizedBox(height: 20),
          Center(
            child: ColorPalette(
              onUpdate: (value) => color = value,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              Text(
                S.of(context).trackExpenses,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Switch(
                value: trackExpenses,
                onChanged: (value) {
                  setState(() {
                    trackExpenses = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          _SubmitButton(
            onPressed: name.isEmpty
                ? null
                : () {
                    getIt.get<QueuesBloc>().add(
                          QueuesEvent.createQueue(
                            name: name,
                            color: color,
                            trackExpenses: trackExpenses,
                          ),
                        );
                    context.router.pop();
                  },
          ),
        ],
      ),
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
        child: Text(
          S.of(context).create,
        ),
      ),
    );
  }
}
