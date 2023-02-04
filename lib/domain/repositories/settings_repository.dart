import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../application/application.dart';
import '../domain.dart';

const _sortKey = 'sort';

@Singleton()
class SettingsRepository {
  Future<void> setPrefferedSort(SortEnum? filter) async {
    if (filter == null) {
      await getIt.get<SharedPreferences>().remove(_sortKey);
    } else {
      await getIt.get<SharedPreferences>().setString(_sortKey, filter.name);
    }
  }

  SortEnum? getPrefferedSort() {
    var sortStr = getIt.get<SharedPreferences>().getString(_sortKey);
    return SortEnum.getFromName(sortStr);
  }
}
