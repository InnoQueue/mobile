import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/domain.dart';
import '../../../presentation.dart';

class EditableParticipantsTile extends StatefulWidget {
  const EditableParticipantsTile({super.key});

  @override
  State<EditableParticipantsTile> createState() =>
      _EditableParticipantsTileState();
}

class _EditableParticipantsTileState extends State<EditableParticipantsTile> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  late var participants =
      context.read<QueueDetailsBloc>().currentQueue.participants.toList();
  late var me = context.read<QueueDetailsBloc>().me;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: AnimatedList(
        key: _listKey,
        initialItemCount: participants.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index, animation) => _ParticipantShell(
          participant: participants[index],
          isMe: participants[index] == me,
          isLast: index == participants.length - 1,
          onTap: () => _removeParticipant(participants[index]),
        ),
      ),
    );
  }

  void _removeParticipant(ParticipantModel participant) {
    var index = participants.indexOf(participant);
    if (index == -1) return;

    _listKey.currentState?.removeItem(
      index,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: _ParticipantShell(
          participant: participant,
          isMe: participant == me,
          isLast: index == participants.length - 1,
          onTap: () {},
        ),
      ),
    );
    context.read<QueueDetailsBloc>().removeParticipant(participant.userId);
    participants.removeAt(index);
    setState(() {});
  }
}

class _ParticipantShell extends StatelessWidget {
  final ParticipantModel participant;
  final bool isMe;
  final bool isLast;
  final void Function() onTap;
  const _ParticipantShell({
    required this.participant,
    required this.isMe,
    required this.isLast,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              const SizedBox(width: 15),
              UserInfo(user: participant),
              const Spacer(),
              if (!isMe)
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: onTap,
                  child: const SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.close,
                      size: 18,
                    ),
                  ),
                ),
              const SizedBox(width: 15),
            ],
          ),
        ),
        if (!isLast)
          Container(
            height: 1,
            color: Colors.grey.shade200,
          ),
      ],
    );
  }
}
