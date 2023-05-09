import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/application.dart';
import '../../presentation.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksBloc>(
      create: (context) => getIt.get<TasksBloc>()
        ..add(
          const TasksEvent.loadData(),
        ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Tasks',
          ),
          centerTitle: true,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            getIt.get<TasksBloc>().add(const TasksEvent.loadData());

            return;
          },
          child: BlocBuilder<TasksBloc, TasksState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                dataLoaded: (tasks) => TaskList(tasks: tasks),
              );
            },
          ),
        ),
      ),
    );
  }
}
