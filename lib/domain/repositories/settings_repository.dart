import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain.dart';

const _sortKey = 'sort';
const _themeKey = 'key';

@Singleton()
class SettingsRepository {
  final SharedPreferences storage;

  SettingsRepository(this.storage);

  Future<void> setPrefferedSort(SortEnum? filter) async {
    if (filter == null) {
      await storage.remove(_sortKey);
    } else {
      await storage.setString(_sortKey, filter.name);
    }
  }

  Future<void> setTheme(String theme) async {
    await storage.setString(_themeKey, theme);
  }

  String get theme => storage.getString(_themeKey) ?? 'bright';

  SortEnum? getPrefferedSort() {
    var sortStr = storage.getString(_sortKey);
    return SortEnum.getFromName(sortStr);
  }
}
