// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'task_list_response.freezed.dart';
part 'task_list_response.g.dart';

@freezed
class TaskListResponse with _$TaskListResponse {
  @JsonSerializable(explicitToJson: true)
  const factory TaskListResponse({
    required List<TaskModel> toDoTasks,
  }) = _TaskListResponse;

  factory TaskListResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskListResponseFromJson(json);
}
