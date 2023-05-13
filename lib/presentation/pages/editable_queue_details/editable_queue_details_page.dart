import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation.dart';

class EditableQueueDetailsPage extends StatelessWidget {
  const EditableQueueDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          S.of(context).edit,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              context
                  .read<QueueDetailsBloc>()
                  .add(const QueueDetailsEvent.submitChanges());
              context.router.pop();
            },
          ),
        ],
      ),
      body: const _MainContent(),
    );
  }
}

class _MainContent extends StatefulWidget {
  const _MainContent();

  @override
  State<_MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<_MainContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const EditableQueueHeading(),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            S.of(context).participants,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        const EditableParticipantsTile(),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 5),
          child: EditableTrackExpensesSwitch(),
        ),
      ],
    );
  }
}
