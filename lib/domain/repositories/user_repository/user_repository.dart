import 'package:shared_preferences/shared_preferences.dart';

import '../../domain.dart';

export 'user_repository_impl.dart';
export 'mock_user_repository_repository.dart';

abstract class UserRepository {
  final SharedPreferences storage;

  UserRepository(this.storage);

  UserModel? getUser();

  Future<void> saveUser(UserModel user);

  Future<UserModel> registerUser(String name);

  Future<void> changeName(String name);

  Future<NotificationSettingsModel> getNotificationSettings();

  Future<void> updateNotificationSettings(
    NotificationSettingsModel notificationSettings,
  );
}
