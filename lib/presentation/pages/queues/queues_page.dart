import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/application.dart';
import '../../presentation.dart';

class QueuesPage extends StatefulWidget {
  const QueuesPage({super.key});

  @override
  State<QueuesPage> createState() => _QueuesPageState();
}

class _QueuesPageState extends State<QueuesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<QueuesBloc>(
      create: (context) => getIt.get<QueuesBloc>()
        ..add(
          const QueuesEvent.loadData(),
        ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Queues',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: const [
            _FilterButtom(),
          ],
        ),
        backgroundColor: Colors.grey.shade100,
        floatingActionButton: const ExpandableFab(),
        body: BlocBuilder<QueuesBloc, QueuesState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              dataLoaded: (queues) => RefreshIndicator(
                onRefresh: () async {
                  getIt.get<QueuesBloc>().add(const QueuesEvent.loadData());

                  return;
                },
                child: QueueList(queues: queues),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _FilterButtom extends StatelessWidget {
  const _FilterButtom();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.sort_rounded),
      color: Colors.black,
      onPressed: () {
        context.router.push(const FiltersRoute());
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}
