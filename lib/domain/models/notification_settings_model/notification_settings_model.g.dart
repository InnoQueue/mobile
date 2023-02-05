// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationSettingsModel _$$_NotificationSettingsModelFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationSettingsModel(
      completed: json['completed'] as bool,
      skipped: json['skipped'] as bool,
      joinedQueue: json['joinedQueue'] as bool,
      freeze: json['freeze'] as bool,
      leftQueue: json['leftQueue'] as bool,
      yourTurn: json['yourTurn'] as bool,
    );

Map<String, dynamic> _$$_NotificationSettingsModelToJson(
        _$_NotificationSettingsModel instance) =>
    <String, dynamic>{
      'completed': instance.completed,
      'skipped': instance.skipped,
      'joinedQueue': instance.joinedQueue,
      'freeze': instance.freeze,
      'leftQueue': instance.leftQueue,
      'yourTurn': instance.yourTurn,
    };
