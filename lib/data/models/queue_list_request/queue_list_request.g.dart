// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueueListRequest _$$_QueueListRequestFromJson(Map<String, dynamic> json) =>
    _$_QueueListRequest(
      sort: $enumDecodeNullable(_$SortEnumEnumMap, json['sort']),
    );

Map<String, dynamic> _$$_QueueListRequestToJson(_$_QueueListRequest instance) =>
    <String, dynamic>{
      'sort': _$SortEnumEnumMap[instance.sort],
    };

const _$SortEnumEnumMap = {
  SortEnum.byQueueName: 'queue',
  SortEnum.byParticipantName: 'participant',
  SortEnum.byDateJoined: 'date',
  SortEnum.byDueDate: 'todo',
};
