// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueueListResponse _$$_QueueListResponseFromJson(Map<String, dynamic> json) =>
    _$_QueueListResponse(
      queues: (json['queues'] as List<dynamic>)
          .map((e) => QueueInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QueueListResponseToJson(
        _$_QueueListResponse instance) =>
    <String, dynamic>{
      'queues': instance.queues,
    };
