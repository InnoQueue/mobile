part of 'completion_bloc.dart';

@freezed
class CompletionEvent with _$CompletionEvent {
  const factory CompletionEvent.completeTask(TaskModel task) = _CompleteTask;

  const factory CompletionEvent.uncompleteTask(TaskModel task) =
      _UncompleteTask;

  const factory CompletionEvent.updateState() = _UpdateState;
}
