part of 'completion_bloc.dart';

@freezed
class CompletionState with _$CompletionState {
  const factory CompletionState.completionState({
    required List<TaskModel> selectedTasks,
    required List<TaskModel> disappearingTasks,
    required List<TaskModel> deletedTasks,
  }) = _CompletionState;
}
