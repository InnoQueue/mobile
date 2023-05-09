import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../application/application.dart';
import '../../../../../domain/domain.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

@Singleton()
class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const _Initial()) {
    on<_LoadData>(_loadData);
    on<_SkipTasks>(_skipTasks);
  }

  List<TaskModel> _tasks = [];

  Future<void> _loadData(
    _LoadData event,
    Emitter<TasksState> emit,
  ) async {
    emit(const TasksState.initial());
    var tasks = await getIt.get<QueuesRepository>().getTasks();
    _tasks = tasks.toList();

    emit(TasksState.dataLoaded(tasks));
  }

  void _skipTasks(
    _SkipTasks event,
    Emitter<TasksState> emit,
  ) {
    for (final int id in event.ids) {
      getIt.get<QueuesRepository>().skipTask(id);
    }

    _tasks.removeWhere((element) => event.ids.contains(element.queueId));
    emit(TasksState.dataLoaded(_tasks.toList()));
  }
}
