import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain.dart';

const _userKey = 'user';

@Singleton(as: UserRepository, env: ['test'])
class MockUserRepositoryImpl implements UserRepository {
  MockUserRepositoryImpl(this.storage);

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
    await Future.delayed(const Duration(milliseconds: 300));
    var user = UserModel(
      userId: 0,
      token: '1',
      fcmToken: '1',
      userName: name,
    );
    await saveUser(user);

    return user;
  }

  @override
  Future<void> changeName(String name) async {
    await Future.delayed(const Duration(milliseconds: 300));
    var user = getUser()!.copyWith(userName: name);
    await saveUser(user);
  }

  @override
  Future<NotificationSettingsModel> getNotificationSettings() async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateNotificationSettings(
    NotificationSettingsModel notificationSettings,
  ) async {
    throw UnimplementedError();
  }
}
