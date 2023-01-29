import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../application/application.dart';
import '../../../../domain/domain.dart';

part 'queue_details_event.dart';
part 'queue_details_state.dart';
part 'queue_details_bloc.freezed.dart';

class QueueDetailsBloc extends Bloc<QueueDetailsEvent, QueueDetailsState> {
  late QueueModel currentQueue;

  UserModel get onDuty =>
      currentQueue.participants.firstWhere((user) => user.onDuty);

  List<UserModel> get otherParticipants =>
      currentQueue.participants.where((user) => !user.onDuty).toList();

  QueueDetailsBloc() : super(const _Initial()) {
    on<_FetchQueue>(_fecthQueue);
    on<_CompleteTask>(_completeTask);
  }

  Future<void> _fecthQueue(
    _FetchQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    var queue = await getIt.get<QueuesRepository>().getQueue(event.queueId);
    currentQueue = queue;
    emit(QueueDetailsState.queueFetched(queue));
  }

  Future<void> _completeTask(
    _CompleteTask event,
    Emitter<QueueDetailsState> emit,
  ) async {
    emit(const QueueDetailsState.initial());
    await getIt.get<QueuesRepository>().completeTask(
          queueId: currentQueue.queueId,
          expenses: event.expenses,
        );
    add(QueueDetailsEvent.fetchQueue(currentQueue.queueId));
  }
}
