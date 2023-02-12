part of 'queues_bloc.dart';

@freezed
class QueuesEvent with _$QueuesEvent {
  const factory QueuesEvent.loadData() = _LoadData;

  const factory QueuesEvent.emitInitial() = _EmitInitial;

  const factory QueuesEvent.createQueue({
    required String name,
    required String color,
    required bool trackExpenses,
  }) = _CreateQueue;
}
