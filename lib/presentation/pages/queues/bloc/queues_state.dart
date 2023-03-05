part of 'queues_bloc.dart';

@freezed
class QueuesState with _$QueuesState {
  const factory QueuesState.initial() = _Initial;

  const factory QueuesState.dataLoaded({
    required List<QueueInfo> activeTasks,
    required List<QueueInfo> frozenTasks,
  }) = _DataLoaded;
}
