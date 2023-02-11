import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../application/application.dart';
import '../../../../data/data.dart';
import '../../../../domain/domain.dart';

part 'queue_details_event.dart';
part 'queue_details_state.dart';
part 'queue_details_bloc.freezed.dart';

class EditableFields {
  String queueName;
  String queueColor;
  bool trackExpenses;
  List<int> participantIds;

  EditableFields({
    required this.queueName,
    required this.queueColor,
    required this.trackExpenses,
    required this.participantIds,
  });
}

class QueueDetailsBloc extends Bloc<QueueDetailsEvent, QueueDetailsState> {
  late QueueModel currentQueue;
  QueueInfo? queueInfo;
  late EditableFields fieldsToSubmit;

  ParticipantModel get onDuty =>
      currentQueue.participants.firstWhere((user) => user.onDuty);

  List<ParticipantModel> get otherParticipants =>
      currentQueue.participants.where((user) => !user.onDuty).toList();

  QueueDetailsBloc(this.queueInfo) : super(const _Initial()) {
    on<_FetchQueue>(_fecthQueue);
    on<_CompleteTask>(_completeTask);
    on<_SkipTask>(_skipTask);
    on<_SubmitChanges>(_submitChanges);
  }

  Future<void> _fecthQueue(
    _FetchQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    var queue = await getIt.get<QueuesRepository>().getQueue(event.queueId);
    currentQueue = queue;

    queueInfo = queueInfo?.copyWith(
      queueName: queue.queueName,
    );

    fieldsToSubmit = EditableFields(
      queueName: queue.queueName,
      queueColor: queue.queueColor,
      trackExpenses: queue.trackExpenses,
      participantIds: queue.participants.map((e) => e.userId).toList(),
    );

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

  Future<void> _skipTask(
    _SkipTask event,
    Emitter<QueueDetailsState> emit,
  ) async {
    emit(const QueueDetailsState.initial());
    await getIt.get<QueuesRepository>().skipTask(currentQueue.queueId);
    add(QueueDetailsEvent.fetchQueue(currentQueue.queueId));
  }

  Future<void> _submitChanges(
    _SubmitChanges event,
    Emitter<QueueDetailsState> emit,
  ) async {
    queueInfo = queueInfo?.copyWith(queueName: null);
    emit(const QueueDetailsState.initial());
    await getIt.get<QueuesRepository>().editQueue(
          queueId: currentQueue.queueId,
          name: fieldsToSubmit.queueName,
          color: fieldsToSubmit.queueColor,
          trackExpenses: fieldsToSubmit.trackExpenses,
          participantIds: fieldsToSubmit.participantIds,
        );
    add(QueueDetailsEvent.fetchQueue(currentQueue.queueId));
  }

  bool get isMyTurn =>
      currentQueue.participants.firstWhere((e) => e.onDuty).userId ==
      getIt.get<UserRepository>().getUser()!.userId;

  ParticipantModel get me => currentQueue.participants.firstWhere(
      (e) => e.userId == getIt.get<UserRepository>().getUser()!.userId);

  void shakeUser() {
    getIt.get<QueuesRepository>().shakeUser(currentQueue.queueId);
  }

  void updateName(String name) {
    fieldsToSubmit.queueName = name;
  }

  void updateColor(String color) {
    fieldsToSubmit.queueColor = color;
  }

  void updateTrackExpenses(bool trackExpenses) {
    fieldsToSubmit.trackExpenses = trackExpenses;
  }

  void removeParticipant(int participantId) {
    fieldsToSubmit.participantIds.remove(participantId);
  }
}
