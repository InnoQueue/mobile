import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/application.dart';
import '../../../data/analytics/fb_analytics.dart';
import '../../presentation.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final SelectionBloc _selectionBloc = SelectionBloc();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TasksBloc>(
          create: (context) => getIt.get<TasksBloc>()
            ..add(
              const TasksEvent.loadData(),
            ),
        ),
        BlocProvider<SelectionBloc>(create: (context) => _selectionBloc),
      ],
      child: Scaffold(
        appBar: SelectableAppBar(
          title: 'Tasks',
          action: GestureDetector(
            onTap: () {
              final List<int> selectedNotificationIds =
                  _selectionBloc.selectedIds.toList();

              getIt.get<TasksBloc>().add(
                    TasksEvent.skipTasks(
                      selectedNotificationIds,
                    ),
                  );

              _selectionBloc.add(const SelectionEvent.unselectAll());
            },
            child: const Icon(
              Icons.autorenew,
              color: Colors.black,
            ),
          ),
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
