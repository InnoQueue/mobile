import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:innoq/data/api/dio.dart';

import '../../domain/domain.dart';

@Singleton()
class UserApi extends BaseApi {
  UserApi(super.userRepository);

  Future<Response> registerUser({
    required String name,
    //required String fcmToken,
  }) async =>
      await dio.post(
        '/user/signup',
        data: {
          'userName': name,
          'fcmToken': 'trassh',
        },
      );

  Future<Response> changeName(String name) async => await dio.patch(
        '/user',
        data: {
          'userName': name,
        },
      );

  Future<Response> getNotificationSettings() async => await dio.get('/user');

  Future<Response> updateNotificationSettings(
          NotificationSettingsModel notificationSettings) async =>
      await dio.patch(
        '/user',
        data: notificationSettings.toJson(),
      );
}
