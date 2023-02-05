// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueueModel _$$_QueueModelFromJson(Map<String, dynamic> json) =>
    _$_QueueModel(
      queueId: json['queueId'] as int,
      queueName: json['queueName'] as String,
      queueColor: json['queueColor'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ParticipantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackExpenses: json['trackExpenses'] as bool,
      admin: json['admin'] as bool,
    );

Map<String, dynamic> _$$_QueueModelToJson(_$_QueueModel instance) =>
    <String, dynamic>{
      'queueId': instance.queueId,
      'queueName': instance.queueName,
      'queueColor': instance.queueColor,
      'participants': instance.participants,
      'trackExpenses': instance.trackExpenses,
      'admin': instance.admin,
    };
