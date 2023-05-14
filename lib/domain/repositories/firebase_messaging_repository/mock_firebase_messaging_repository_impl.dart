import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import 'dart:async';

import '../../../domain/domain.dart';

@Singleton(as: FirebaseMessagingRepository, env: ['test'])
class MockFirebaseMesssagingRepository implements FirebaseMessagingRepository {
  @override
  FirebaseMessaging? get fcm => null;

  @override
  Future<RemoteMessage?> getInitialMessage() async => null;

  @override
  Future<String?> getToken({String? vapidKey}) async => '';

  @override
  void onBackgroundMessage(Future<void> Function(RemoteMessage p1) handler) {}

  @override
  StreamSubscription<RemoteMessage> onMessageAppListen(
    void Function(RemoteMessage p1)? onData,
  ) =>
      const Stream<RemoteMessage>.empty().listen((onData) {});

  @override
  StreamSubscription<RemoteMessage> onMessageOpenedAppListen(
    void Function(RemoteMessage p1)? onData,
  ) =>
      const Stream<RemoteMessage>.empty().listen((onData) {});

  @override
  Future<NotificationSettings> requestPermission() async =>
      const NotificationSettings(
        alert: AppleNotificationSetting.disabled,
        announcement: AppleNotificationSetting.disabled,
        authorizationStatus: AuthorizationStatus.denied,
        badge: AppleNotificationSetting.disabled,
        carPlay: AppleNotificationSetting.disabled,
        lockScreen: AppleNotificationSetting.disabled,
        notificationCenter: AppleNotificationSetting.disabled,
        showPreviews: AppleShowPreviewSetting.never,
        timeSensitive: AppleNotificationSetting.disabled,
        criticalAlert: AppleNotificationSetting.disabled,
        sound: AppleNotificationSetting.disabled,
      );
}
