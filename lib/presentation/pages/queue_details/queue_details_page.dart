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
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            title: Text(
              context.read<QueueDetailsBloc>().queueInfo?.queueName ?? '...',
              style: const TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
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
          backgroundColor: Colors.grey.shade100,
          body: BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
            builder: (context, state) {
              return state.when(
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
              );
            },
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
        const ParticipantsTile(),
      ],
    );
  }
}
