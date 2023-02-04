// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      notificationId: json['notificationId'] as int,
      messageType: $enumDecode(_$NotificationTypeEnumMap, json['messageType']),
      message: json['message'] as String?,
      participantId: json['participantId'] as int?,
      participantName: json['participantName'] as String?,
      queueId: json['queueId'] as int?,
      queueName: json['queueName'] as String?,
      date: DateTime.parse(json['date'] as String),
      read: json['read'] as bool,
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'messageType': _$NotificationTypeEnumMap[instance.messageType]!,
      'message': instance.message,
      'participantId': instance.participantId,
      'participantName': instance.participantName,
      'queueId': instance.queueId,
      'queueName': instance.queueName,
      'date': instance.date.toIso8601String(),
      'read': instance.read,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.yourTurn: 'YOUR_TURN',
  NotificationType.completed: 'COMPLETED',
  NotificationType.skipped: 'SKIPPED',
  NotificationType.shook: 'SHOOK',
  NotificationType.frozen: 'FROZEN',
  NotificationType.unforzen: 'UNFROZEN',
  NotificationType.joinedQueue: 'JOINED_QUEUE',
  NotificationType.leftQueue: 'LEFT_QUEUE',
  NotificationType.deleteQueue: 'DELETE_QUEUE',
  NotificationType.update: 'UPDATE',
  NotificationType.other: 'OTHER',
};
