import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings_model.freezed.dart';
part 'notification_settings_model.g.dart';

@freezed
class NotificationSettingsModel with _$NotificationSettingsModel {
  const factory NotificationSettingsModel({
    required bool completed,
    required bool skipped,
    required bool joinedQueue,
    required bool freeze,
    required bool leftQueue,
    required bool yourTurn,
  }) = _NotificationSettingsModel;

  factory NotificationSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsModelFromJson(json);
}
