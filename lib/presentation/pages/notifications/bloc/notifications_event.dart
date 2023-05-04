part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.fetchNotifications() = _FetchNotifications;

  const factory NotificationsEvent.removeBySwipe(int notificationId) =
      _RemoveBySwipe;

  const factory NotificationsEvent.removeNotifications(
    List<int> notificationIds,
  ) = _RemoveNotifications;

  const factory NotificationsEvent.removeAllNotifications() =
      _RemoveAllNotifications;

  const factory NotificationsEvent.updateNotifications({
    required bool showLoading,
  }) = _UpdateNotifications;
}
