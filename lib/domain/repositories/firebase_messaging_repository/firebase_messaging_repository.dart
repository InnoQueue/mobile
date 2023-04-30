import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

abstract class FirebaseMessagingRepository {
  FirebaseMessaging? get fcm;

  Future<String?> getToken({String? vapidKey});

  Future<RemoteMessage?> getInitialMessage();

  StreamSubscription<RemoteMessage> onMessageOpenedAppListen(
    void Function(RemoteMessage)? onData,
  );

  StreamSubscription<RemoteMessage> onMessageAppListen(
    void Function(RemoteMessage)? onData,
  );

  void onBackgroundMessage(Future<void> Function(RemoteMessage) handler);

  Future<NotificationSettings> requestPermission();
}
