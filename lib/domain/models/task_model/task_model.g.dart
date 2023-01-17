// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      queueId: json['queueId'] as int,
      queueName: json['queueName'] as String,
      queueColor: json['queueColor'] as String,
      trackExpenses: json['trackExpenses'] as bool,
      important: json['important'] as bool,
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'queueId': instance.queueId,
      'queueName': instance.queueName,
      'queueColor': instance.queueColor,
      'trackExpenses': instance.trackExpenses,
      'important': instance.important,
    };
