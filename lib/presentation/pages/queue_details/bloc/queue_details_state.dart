part of 'queue_details_bloc.dart';

@freezed
class QueueDetailsState with _$QueueDetailsState {
  const factory QueueDetailsState.initial() = _Initial;

  const factory QueueDetailsState.queueFetched(QueueModel queue) =
      _QueueFetched;
}
