part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;

  const factory NotificationsState.itemsFetched({
    required List<NotificationModel> items,
    required bool fetchedAll,
  }) = _ItemsFetched;
}
