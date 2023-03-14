import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../application/application.dart';
import '../../../../../domain/domain.dart';

part 'completion_event.dart';
part 'completion_state.dart';
part 'completion_bloc.freezed.dart';

class CompletionBloc extends Bloc<CompletionEvent, CompletionState> {
  Timer? _waitingTimer;
  Timer? _completingTimer;
  var selectedTasks = <TaskModel>[];
  var disappearingTasks = <TaskModel>[];
  var deletedTasks = <TaskModel>[];

  final Duration _waitingDuration = const Duration(milliseconds: 1500);
  final Duration disappearingDuration = const Duration(milliseconds: 1500);

  CompletionBloc()
      : super(
          const _CompletionState(
            selectedTasks: [],
            disappearingTasks: [],
            deletedTasks: [],
          ),
        ) {
    on<_CompleteTask>(_completeTask);
    on<_UncompleteTask>(_uncompleteTask);
    on<_UpdateState>((event, emit) => _updateState(emit));
  }

  void _completeTask(
    _CompleteTask event,
    Emitter<CompletionState> emit,
  ) {
    selectedTasks.add(event.task);
    _waitingTimer?.cancel();
    _waitingTimer = Timer(_waitingDuration, _makeTasksDisappear);
    _updateState(emit);
  }

  void _uncompleteTask(
    _UncompleteTask event,
    Emitter<CompletionState> emit,
  ) {
    selectedTasks.remove(event.task);
    disappearingTasks.remove(event.task);
    _waitingTimer?.cancel();
    _waitingTimer = Timer(_waitingDuration, _makeTasksDisappear);
    _updateState(emit);
  }

  void _updateState(Emitter<CompletionState> emit) {
    emit(
      _CompletionState(
        selectedTasks: selectedTasks.toList(),
        disappearingTasks: disappearingTasks.toList(),
        deletedTasks: deletedTasks.toList(),
      ),
    );
  }

  void _makeTasksDisappear() {
    disappearingTasks
      ..addAll(selectedTasks)
      ..toSet()
      ..toList();

    _completingTimer?.cancel();
    _completingTimer = Timer(disappearingDuration, _completeTasks);
    add(const _UpdateState());
  }

  void _completeTasks() {
    for (var task in disappearingTasks) {
      getIt.get<QueuesRepository>().completeTask(queueId: task.queueId);
    }

    deletedTasks = disappearingTasks.toList();
    disappearingTasks = [];
    add(const _UpdateState());
  }

  @override
  Future<void> close() {
    _waitingTimer?.cancel();
    return super.close();
  }
}
