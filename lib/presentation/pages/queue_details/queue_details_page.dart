import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/data.dart';
import '../../presentation.dart';

class QueueDetailsPage extends StatelessWidget {
  final QueueInfo queueInfo;
  const QueueDetailsPage({
    required this.queueInfo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QueueDetailsBloc>(
      create: (context) => QueueDetailsBloc()
        ..add(
          QueueDetailsEvent.fetchQueue(queueInfo.queueId),
        ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            queueInfo.queueName,
            style: const TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade100,
        body: BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              queueFetched: (queue) => const _MainContent(),
            );
          },
        ),
      ),
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const QueueHeading(),
        const SizedBox(height: 10),
        const AddProgressButton(),
        const SizedBox(height: 10),
        if (context.read<QueueDetailsBloc>().isMyTurn) ...[
          const SkipButton(),
          const SizedBox(height: 20),
        ],
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'On duty:',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        const OnDutyTile(),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Other participants:',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        const ParticipantTile(),
      ],
    );
  }
}
