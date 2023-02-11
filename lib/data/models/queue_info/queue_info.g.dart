// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueueInfo _$$_QueueInfoFromJson(Map<String, dynamic> json) => _$_QueueInfo(
      queueId: json['queueId'] as int,
      queueName: json['queueName'] as String?,
      queueColor: json['queueColor'] as String,
      onDutyUserName: json['onDutyUserName'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$_QueueInfoToJson(_$_QueueInfo instance) =>
    <String, dynamic>{
      'queueId': instance.queueId,
      'queueName': instance.queueName,
      'queueColor': instance.queueColor,
      'onDutyUserName': instance.onDutyUserName,
      'active': instance.active,
    };
