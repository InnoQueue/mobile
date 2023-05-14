import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../presentation.dart';

class QueueDetailsPage extends StatefulWidget {
  const QueueDetailsPage({super.key});

  @override
  State<QueueDetailsPage> createState() => _QueueDetailsPageState();
}

class _QueueDetailsPageState extends State<QueueDetailsPage> {
  bool admin = false;
  bool initialized = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QueueDetailsBloc, QueueDetailsState>(
      listener: (context, state) {
        state.whenOrNull(queueFetched: (_) {
          setState(() {
            admin = context.read<QueueDetailsBloc>().currentQueue.admin;
            initialized = true;
          });
        });
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: QueueTitle(
              queueName: state.when(
                initial: () => '...',
                queueFetched: (queue) => queue.queueName,
              ),
              fontSize: 20,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => AutoRouter.of(context).pop(),
            ),
            actions: [
              if (admin)
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => context.router.push(
                    const EditableQueueDetailsRoute(),
                  ),
                ),
              if (initialized) const OptionsButton(),
            ],
          ),
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            queueFetched: (queue) => RefreshIndicator(
              onRefresh: () async {
                context.read<QueueDetailsBloc>().add(
                      QueueDetailsEvent.fetchQueue(queue.queueId),
                    );

                return;
              },
              child: const _MainContent(),
            ),
          ),
        );
      },
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
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            S.of(context).onDuty,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        const OnDutyTile(),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            S.of(context).otherParticipants,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        const ParticipantsTile(),
      ],
    );
  }
}
