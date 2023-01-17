part of 'queues_bloc.dart';

@freezed
class QueuesEvent with _$QueuesEvent {
  const factory QueuesEvent.loadData() = _LoadData;
}
