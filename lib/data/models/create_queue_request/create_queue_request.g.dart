// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_queue_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateQueueRequest _$$_CreateQueueRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateQueueRequest(
      queueName: json['queueName'] as String,
      queueColor: json['queueColor'] as String,
      trackExpenses: json['trackExpenses'] as bool,
    );

Map<String, dynamic> _$$_CreateQueueRequestToJson(
        _$_CreateQueueRequest instance) =>
    <String, dynamic>{
      'queueName': instance.queueName,
      'queueColor': instance.queueColor,
      'trackExpenses': instance.trackExpenses,
    };
