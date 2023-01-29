import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class AddProgressButton extends StatelessWidget {
  const AddProgressButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) {
        var currentQueue = context.read<QueueDetailsBloc>().currentQueue;

        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              if (currentQueue.trackExpenses) {
                context.router.push(
                  AddProgressRoute(
                    submitExpenses: (expenses) {
                      context.read<QueueDetailsBloc>().add(
                            QueueDetailsEvent.completeTask(
                              expenses: expenses,
                            ),
                          );
                    },
                  ),
                );
              } else {
                context
                    .read<QueueDetailsBloc>()
                    .add(const QueueDetailsEvent.completeTask());
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.green.shade300,
              ),
              foregroundColor: const MaterialStatePropertyAll(
                Colors.white,
              ),
              elevation: const MaterialStatePropertyAll(0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
            child: const Text(
              'Add Progress',
              style: TextStyle(fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
