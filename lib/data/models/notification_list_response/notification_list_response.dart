import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'notification_list_response.freezed.dart';
part 'notification_list_response.g.dart';

@freezed
class NotificationListResponse with _$NotificationListResponse {
  const factory NotificationListResponse({
    required List<NotificationModel> content,
    required bool last,
  }) = _NotificationListResponse;

  factory NotificationListResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationListResponseFromJson(json);
}
