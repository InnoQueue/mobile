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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksBloc>(
      create: (context) => getIt.get<TasksBloc>()
        ..add(
          const TasksEvent.loadData(),
        ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Tasks',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade100,
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
