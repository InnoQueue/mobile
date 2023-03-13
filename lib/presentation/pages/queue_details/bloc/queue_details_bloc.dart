import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:innoq/presentation/presentation.dart';

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

  bool get isActive => currentQueue.participants
      .firstWhere((user) => user.userId == _myId)
      .active;

  QueueDetailsBloc(this.queueInfo) : super(const _Initial()) {
    on<_FetchQueue>(_fecthQueue);
    on<_CompleteTask>(_completeTask);
    on<_SkipTask>(_skipTask);
    on<_SubmitChanges>(_submitChanges);
    on<_LeaveQueue>(_leaveQueue);
    on<_FreezeQueue>(_freezeQueue);
    on<_UnfreezeQueue>(_unfreezeQueue);
  }

  Future<void> _fecthQueue(
    _FetchQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    emit(const QueueDetailsState.initial());
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

  void _leaveQueue(
    _LeaveQueue event,
    Emitter<QueueDetailsState> emit,
  ) async {
    getIt.get<QueuesBloc>().add(const QueuesEvent.emitInitial());
    await getIt.get<QueuesRepository>().deleteQueue(currentQueue.queueId);
    getIt.get<QueuesBloc>().add(const QueuesEvent.loadData());
  }

  void _freezeQueue(
    _FreezeQueue event,
    Emitter<QueueDetailsState> emit,
  ) {
    _changeActivity(emit, false);
  }

  void _unfreezeQueue(
    _UnfreezeQueue event,
    Emitter<QueueDetailsState> emit,
  ) {
    _changeActivity(emit, true);
  }

  void _changeActivity(Emitter emit, bool activity) async {
    emit(const _Initial());
    if (activity) {
      await getIt.get<QueuesRepository>().unfreezeQueue(currentQueue.queueId);
    } else {
      await getIt.get<QueuesRepository>().freezeQueue(currentQueue.queueId);
    }
    getIt.get<QueuesBloc>().add(const QueuesEvent.loadData());
    add(QueueDetailsEvent.fetchQueue(currentQueue.queueId));
  }

  int get _myId => getIt.get<UserRepository>().getUser()!.userId;

  bool get isMyTurn =>
      currentQueue.participants.firstWhere((e) => e.onDuty).userId == _myId;

  ParticipantModel get me =>
      currentQueue.participants.firstWhere((e) => e.userId == _myId);

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
