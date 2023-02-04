part of 'queue_details_bloc.dart';

@freezed
class QueueDetailsEvent with _$QueueDetailsEvent {
  const factory QueueDetailsEvent.fetchQueue(
    int queueId,
  ) = _FetchQueue;

  const factory QueueDetailsEvent.completeTask({
    double? expenses,
  }) = _CompleteTask;

  const factory QueueDetailsEvent.skipTask() = _SkipTask;
}
