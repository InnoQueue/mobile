// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskListResponse _$$_TaskListResponseFromJson(Map<String, dynamic> json) =>
    _$_TaskListResponse(
      toDoTasks: (json['toDoTasks'] as List<dynamic>)
          .map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TaskListResponseToJson(_$_TaskListResponse instance) =>
    <String, dynamic>{
      'toDoTasks': instance.toDoTasks,
    };
