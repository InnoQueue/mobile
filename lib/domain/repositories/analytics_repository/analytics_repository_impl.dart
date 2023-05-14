// coverage:ignore-file

import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
// ignore_for_file: invalid_annotation_target

import '../../domain.dart';

@Singleton(
  as: AnalyticsRepository,
  env: ['prod', 'dev'],
  scope: 'analytics',
)
class AnalyticsRepositoryImpl implements AnalyticsRepository {
  final bool _debug = kDebugMode;

  late final FirebaseAnalytics analytics;
  late final FirebaseAnalyticsObserver _observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  get observer => _observer;

  void logTest() async {
    await analytics.logEvent(
      name: 'test_event',
      parameters: {
        'string': 'string',
        'int': 42,
        'long': 12345678910,
        // time in ms:
        'timestamp': DateTime.now().millisecondsSinceEpoch,
        // Only strings and numbers (ints & doubles) are supported for GA custom event parameters:
        // https://developers.google.com/analytics/devguides/collection/analyticsjs/custom-dims-mets#overview
        'bool': true.toString(),
      },
    );
  }

  Map<String, String> eventNames = {
    'pageOpen': 'page_open',
    'appOpen': 'app_open',
    'deeplinkOpen': 'deeplink_open',
    'notificationRemoved': 'notification_removed',
    'notificationsUpdated': 'notifications_updated',
    'notificationsRead': 'notifications_read',
    'joinQueue': 'join_queue',
    'createQueue': 'create_queue',
    'notificationSettingsOpened': 'notification_settings_opened',
    'themeSettingsOpened': 'theme_settings_opened',
    'languageSettingsOpened': 'language_settings_opened',
    'leaveFeedbackOpened': 'leave_feedback_opened',
    'notificationSettingsUpdated': 'notification_settings_updated',
    'notificationSettingsSaved': 'notification_settings_saved',
    'sortSettingsSaved': 'sort_settings_saved',
    'languageSettingsUpdated': 'language_settings_updated',
    'themeSettingsUpdated': 'theme_settings_updated',
    'expensesSubmitted': 'expenses_submitted',
    'joinQueueFailed': 'join_queue_failed',
    'queueShared': 'queue_shared',
  };

  @override
  void logPageOpen(String pageName) async {
    if (_debug) log("FBAnalytics: logging pageOpen event");
    await analytics.setCurrentScreen(screenName: pageName);
  }

  @override
  void logAppOpen() {
    if (_debug) log("FBAnalytics: logging appOpen event");
    analytics.logAppOpen(
      callOptions: AnalyticsCallOptions(
        global: false,
      ),
    );
  }

  @override
  void logDeeplinkOpen(Uri link) {
    if (_debug) log("FBAnalytics: logging deeplinkOpen event");
    analytics.logEvent(
      name: eventNames['deeplinkOpen']!,
      parameters: {
        'link': link.toString(),
      },
    );
  }

  @override
  void logNotificationRemoved() {
    if (_debug) log("FBAnalytics: logging notificationRemoved event");
    analytics.logEvent(
      name: eventNames['notificationRemoved']!,
    );
  }

  @override
  void logNotificationsUpdated() {
    if (_debug) log("FBAnalytics: logging notificationsUpdated event");
    analytics.logEvent(
      name: eventNames['notificationsUpdated']!,
    );
  }

  @override
  void logNotificationsRead() {
    if (_debug) log("FBAnalytics: logging notificationsRead event");
    analytics.logEvent(
      name: eventNames['notificationsRead']!,
    );
  }

  @override
  void logJoinQueue(int queueId) {
    if (_debug) log("FBAnalytics: logging joinQueue event");
    analytics.logEvent(
      name: eventNames['joinQueue']!,
      parameters: {
        'queue_id': queueId,
      },
    );
  }

  @override
  void logCreateQueue() {
    if (_debug) log("FBAnalytics: logging createQueue event");
    analytics.logEvent(
      name: eventNames['createQueue']!,
    );
  }

  @override
  void logNotificationSettingsOpened() {
    if (_debug) log("FBAnalytics: logging notificationSettingsOpened event");
    analytics.logEvent(
      name: eventNames['notificationSettingsOpened']!,
    );
  }

  @override
  void logThemeSettingsOpened() {
    if (_debug) log("FBAnalytics: logging themeSettingsOpened event");
    analytics.logEvent(
      name: eventNames['themeSettingsOpened']!,
    );
  }

  @override
  void logLanguageSettingsOpened() {
    if (_debug) log("FBAnalytics: logging languageSettingsOpened event");
    analytics.logEvent(
      name: eventNames['languageSettingsOpened']!,
    );
  }

  @override
  void logLeaveFeedbackOpened() {
    if (_debug) log("FBAnalytics: logging leaveFeedbackOpened event");
    analytics.logEvent(
      name: eventNames['leaveFeedbackOpened']!,
    );
  }

  @override
  void logNotificationSettingsUpdated({
    required String setting,
    required bool newValue,
  }) {
    if (_debug) log("FBAnalytics: logging notificationSettingsUpdated event");
    analytics.logEvent(
      name: eventNames['notificationSettingsUpdated']!,
      parameters: {
        'setting': setting,
        'new_value': newValue.toString(),
      },
    );
  }

  @override
  void logNotificationSettingsSaved() {
    if (_debug) log("FBAnalytics: logging notificationSettingsSaved event");
    analytics.logEvent(
      name: eventNames['notificationSettingsSaved']!,
    );
  }

  @override
  void logSortSettingsSaved({SortEnum? preferredSort}) {
    if (_debug) log("FBAnalytics: logging sortSettingsSaved event");
    analytics.logEvent(
      name: eventNames['sortSettingsSaved']!,
      parameters: {
        'preferred_sort': preferredSort?.presentationName,
      },
    );
  }

  @override
  void logLanguageSettingsUpdated({required String preferredLanguage}) {
    if (_debug) log("FBAnalytics: logging languageSettingsUpdated event");
    analytics.logEvent(
      name: eventNames['languageSettingsUpdated']!,
      parameters: {
        'preferred_language': preferredLanguage,
      },
    );
  }

  @override
  void logThemeSettingsUpdated({required String preferredTheme}) {
    if (_debug) log("FBAnalytics: logging themeSettingsUpdated event");
    analytics.logEvent(
      name: eventNames['themeSettingsUpdated']!,
      parameters: {
        'preferred_theme': preferredTheme,
      },
    );
  }

  @override
  void logExpensesSubmitted({required double expenses}) {
    if (_debug) log("FBAnalytics: logging expensesSubmitted event");
    analytics.logEvent(
      name: eventNames['expensesSubmitted']!,
      parameters: {
        'expenses': expenses,
      },
    );
  }

  @override
  void logJoinQueueFailed() {
    if (_debug) log("FBAnalytics: logging joinQueueFailed event");
    analytics.logEvent(
      name: eventNames['joinQueueFailed']!,
    );
  }

  @override
  void logQueueShared({required int queueId, required String queueName}) {
    if (_debug) log("FBAnalytics: logging queueShared event");
    analytics.logEvent(
      name: eventNames['queueShared']!,
      parameters: {
        'queue_id': queueId,
        'queue_name': queueName,
      },
    );
  }
}
