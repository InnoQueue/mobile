import 'package:injectable/injectable.dart';

import '../../data/data.dart';

@Singleton()
class NotificationsRepository {
  NotificationsApi notificationsApi;
  NotificationsRepository(this.notificationsApi);

  Future<NotificationListResponse> getNotifications({
    required int page,
    required int size,
  }) async {
    return NotificationListResponse.fromJson(
      (await notificationsApi.getNotifications(
        page: page,
        size: size,
      ))
          .data,
    );
  }

  Future<void> readNotification(int id) =>
      notificationsApi.readNotification(id);

  Future<void> removeNotification(int id) =>
      notificationsApi.removeNotification(id);

  Future<void> removeNotifications(List<int> ids) =>
      notificationsApi.removeNotifications(ids);
}
