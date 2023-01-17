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
      currentUser:
          UserModel.fromJson(json['currentUser'] as Map<String, dynamic>),
      partisipants: (json['partisipants'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackExpenses: json['trackExpenses'] as bool,
      actvie: json['actvie'] as bool,
      admin: json['admin'] as bool,
      yourTurn: json['yourTurn'] as bool,
    );

Map<String, dynamic> _$$_QueueModelToJson(_$_QueueModel instance) =>
    <String, dynamic>{
      'queueId': instance.queueId,
      'queueName': instance.queueName,
      'queueColor': instance.queueColor,
      'currentUser': instance.currentUser,
      'partisipants': instance.partisipants,
      'trackExpenses': instance.trackExpenses,
      'actvie': instance.actvie,
      'admin': instance.admin,
      'yourTurn': instance.yourTurn,
    };
