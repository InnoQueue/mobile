import '../../domain.dart';

export 'analytics_repository_impl.dart';
export 'mock_analytics_repository_impl.dart';

abstract class AnalyticsRepository {
  void logPageOpen(String pageName);
  void logAppOpen();
  void logDeeplinkOpen(Uri link);
  void logNotificationRemoved();
  void logNotificationsUpdated();
  void logNotificationsRead();
  void logJoinQueue(int queueId);
  void logCreateQueue();
  void logNotificationSettingsOpened();
  void logThemeSettingsOpened();
  void logLanguageSettingsOpened();
  void logLeaveFeedbackOpened();
  void logNotificationSettingsUpdated({
    required String setting,
    required bool newValue,
  });
  void logNotificationSettingsSaved();
  void logSortSettingsSaved({SortEnum? preferredSort});
  void logLanguageSettingsUpdated({required String preferredLanguage});
  void logThemeSettingsUpdated({required String preferredTheme});
  void logExpensesSubmitted({required double expenses});
  void logJoinQueueFailed();
  void logQueueShared({required int queueId, required String queueName});
}
