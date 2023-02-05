import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:innoq/data/api/dio.dart';

@Singleton()
class NotificationsApi extends BaseApi {
  NotificationsApi(super.userRepository);

  Future<Response> getNotifications({
    required int page,
    required int size,
  }) async =>
      await dio.get(
        '/notifications',
        queryParameters: {
          'page': page,
          'size': size,
        },
      );

  Future<Response> readNotification(int id) async =>
      await dio.post('/notifications', data: {
        'notificationIds': [id],
      });
}
