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
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Edit',
          style: TextStyle(color: Colors.black),
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
      backgroundColor: Colors.grey.shade100,
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
      children: const [
        EditableQueueHeading(),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Participants:',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(height: 10),
        EditableParticipantsTile(),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 5),
          child: EditableTrackExpensesSwitch(),
        ),
      ],
    );
  }
}
