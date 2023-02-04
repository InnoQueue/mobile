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

        return CustomButton(
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
          backgroundColor: Colors.green.shade300,
          text: 'Add Progress',
        );
      },
    );
  }
}
