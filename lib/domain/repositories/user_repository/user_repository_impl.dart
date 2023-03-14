import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../application/application.dart';
import '../../../data/data.dart';
import '../../domain.dart';

const _userKey = 'user';

@Singleton(as: UserRepository, env: ['dev', 'prod'])
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this.storage);

  @override
  final SharedPreferences storage;

  @override
  UserModel? getUser() {
    if (storage.containsKey(_userKey)) {
      return UserModel.fromJson(jsonDecode(storage.getString(_userKey)!));
    }

    return null;
  }

  @override
  Future<void> saveUser(UserModel user) async {
    await storage.setString(_userKey, jsonEncode(user));
  }

  @override
  Future<UserModel> registerUser(String name) async {
    var rawResponse = await getIt.get<UserApi>().registerUser(name: name);
    var signupResponse = SignupResponse.fromJson(rawResponse.data);

    var user = UserModel(
      userId: signupResponse.userId,
      token: signupResponse.token,
      fcmToken: '1',
      userName: name,
    );

    await saveUser(user);

    return user;
  }

  @override
  Future<void> changeName(String name) async {
    var user = getUser()!.copyWith(userName: name);
    await saveUser(user);
    await getIt.get<UserApi>().changeName(name);
  }

  @override
  Future<NotificationSettingsModel> getNotificationSettings() async {
    var rawResponse = await getIt.get<UserApi>().getNotificationSettings();
    return NotificationSettingsModel.fromJson(rawResponse.data);
  }

  @override
  Future<void> updateNotificationSettings(
    NotificationSettingsModel notificationSettings,
  ) async {
    await getIt.get<UserApi>().updateNotificationSettings(notificationSettings);
  }
}
