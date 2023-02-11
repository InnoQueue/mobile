import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class ParticipantsTile extends StatelessWidget {
  const ParticipantsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) {
        var participants = context.read<QueueDetailsBloc>().otherParticipants;

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  UserInfo(user: participants[index]),
                  const Spacer(),
                  const SizedBox(width: 15),
                ],
              ),
            ),
            separatorBuilder: (context, index) => Container(
              height: 1,
              color: Colors.grey.shade200,
            ),
            itemCount: participants.length,
          ),
        );
      },
    );
  }
}
