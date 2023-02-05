// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParticipantModel _$$_ParticipantModelFromJson(Map<String, dynamic> json) =>
    _$_ParticipantModel(
      userId: json['userId'] as int,
      userName: json['userName'] as String,
      expenses: json['expenses'] as int,
      active: json['active'] as bool,
      onDuty: json['onDuty'] as bool,
    );

Map<String, dynamic> _$$_ParticipantModelToJson(_$_ParticipantModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'expenses': instance.expenses,
      'active': instance.active,
      'onDuty': instance.onDuty,
    };
