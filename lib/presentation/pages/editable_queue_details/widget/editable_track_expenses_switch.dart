import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class EditableTrackExpensesSwitch extends StatefulWidget {
  const EditableTrackExpensesSwitch({super.key});

  @override
  State<EditableTrackExpensesSwitch> createState() =>
      _EditableTrackExpensesSwitchState();
}

class _EditableTrackExpensesSwitchState
    extends State<EditableTrackExpensesSwitch> {
  late var currentValue =
      context.read<QueueDetailsBloc>().currentQueue.trackExpenses;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(S.of(context).trackExpenses),
        const Spacer(),
        Switch(
          value: currentValue,
          onChanged: (value) {
            context.read<QueueDetailsBloc>().updateTrackExpenses(value);
            setState(() {
              currentValue = value;
            });
          },
        ),
      ],
    );
  }
}
