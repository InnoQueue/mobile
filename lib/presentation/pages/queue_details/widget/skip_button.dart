import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            context
                .read<QueueDetailsBloc>()
                .add(const QueueDetailsEvent.skipTask());
          },
          backgroundColor: Colors.deepOrange.shade300,
          text: 'Skip',
        );
      },
    );
  }
}
