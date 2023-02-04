import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

enum NotificationType {
  @JsonValue('YOUR_TURN')
  yourTurn,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('SKIPPED')
  skipped,
  @JsonValue('SHOOK')
  shook,
  @JsonValue('FROZEN')
  frozen,
  @JsonValue('UNFROZEN')
  unforzen,
  @JsonValue('JOINED_QUEUE')
  joinedQueue,
  @JsonValue('LEFT_QUEUE')
  leftQueue,
  @JsonValue('DELETE_QUEUE')
  deleteQueue,
  @JsonValue('UPDATE')
  update,
  @JsonValue('OTHER')
  other,
}

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required int notificationId,
    required NotificationType messageType,
    required String? message,
    required int? participantId,
    required String? participantName,
    required int? queueId,
    required String? queueName,
    required DateTime date,
    required bool read,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
