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
  }

  Future<void> _loadData(
    _LoadData event,
    Emitter<TasksState> emit,
  ) async {
    emit(const TasksState.initial());
    var tasks = await getIt.get<QueuesRepository>().getTasks();

    emit(TasksState.dataLoaded(tasks));
  }
}
