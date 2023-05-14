import 'package:injectable/injectable.dart';

import '../../domain.dart';

@Singleton(as: AnalyticsRepository, env: ['test'])
class MockAnalyticsRepositoryImpl implements AnalyticsRepository {
  @override
  void logAppOpen() {}

  @override
  void logCreateQueue() {}

  @override
  void logDeeplinkOpen(Uri link) {}

  @override
  void logExpensesSubmitted({required double expenses}) {}

  @override
  void logJoinQueue(int queueId) {}

  @override
  void logJoinQueueFailed() {}

  @override
  void logLanguageSettingsOpened() {}

  @override
  void logLanguageSettingsUpdated({required String preferredLanguage}) {}

  @override
  void logLeaveFeedbackOpened() {}

  @override
  void logNotificationRemoved() {}

  @override
  void logNotificationSettingsOpened() {}

  @override
  void logNotificationSettingsSaved() {}

  @override
  void logNotificationSettingsUpdated({
    required String setting,
    required bool newValue,
  }) {}

  @override
  void logNotificationsRead() {}

  @override
  void logNotificationsUpdated() {}

  @override
  void logPageOpen(String pageName) {}

  @override
  void logQueueShared({required int queueId, required String queueName}) {}

  @override
  void logSortSettingsSaved({SortEnum? preferredSort}) {}

  @override
  void logThemeSettingsOpened() {}

  @override
  void logThemeSettingsUpdated({required String preferredTheme}) {}
}
