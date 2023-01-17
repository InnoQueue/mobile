// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_queue_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditQueueRequest _$$_EditQueueRequestFromJson(Map<String, dynamic> json) =>
    _$_EditQueueRequest(
      id: json['id'] as int,
      name: json['name'] as String?,
      color: json['color'] as String?,
      trackExpenses: json['trackExpenses'] as bool?,
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_EditQueueRequestToJson(_$_EditQueueRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'trackExpenses': instance.trackExpenses,
      'participants': instance.participants,
    };
