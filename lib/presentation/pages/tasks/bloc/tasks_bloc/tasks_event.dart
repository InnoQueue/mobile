part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.loadData() = _LoadData;

  const factory TasksEvent.skipTasks(List<int> ids) = _SkipTasks;
}
