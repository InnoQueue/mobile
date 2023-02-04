// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationListResponse _$$_NotificationListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationListResponse(
      content: (json['content'] as List<dynamic>)
          .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      last: json['last'] as bool,
    );

Map<String, dynamic> _$$_NotificationListResponseToJson(
        _$_NotificationListResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'last': instance.last,
    };
