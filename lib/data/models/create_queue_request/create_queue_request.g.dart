// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_queue_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateQueueRequest _$$_CreateQueueRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateQueueRequest(
      name: json['name'] as String,
      color: json['color'] as String,
      trackExpenses: json['trackExpenses'] as bool,
    );

Map<String, dynamic> _$$_CreateQueueRequestToJson(
        _$_CreateQueueRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'trackExpenses': instance.trackExpenses,
    };
