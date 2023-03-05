import 'package:freezed_annotation/freezed_annotation.dart';

part 'queue_info.freezed.dart';
part 'queue_info.g.dart';

@freezed
class QueueInfo with _$QueueInfo {
  const factory QueueInfo({
    required int queueId,
    required String? queueName,
    required String queueColor,
    required String onDutyUserName,
    required bool active,
  }) = _QueueInfo;

  factory QueueInfo.fromJson(Map<String, dynamic> json) =>
      _$QueueInfoFromJson(json);
}
