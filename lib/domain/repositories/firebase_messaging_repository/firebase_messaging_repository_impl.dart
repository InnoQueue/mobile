import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import 'dart:async';

import '../../domain.dart';

@Singleton(as: FirebaseMessagingRepository, env: ['prod', 'dev'])
class FirebaseMessagingRepositoryImpl implements FirebaseMessagingRepository {
  @override
  FirebaseMessaging? get fcm => FirebaseMessaging.instance;

  @override
  Future<RemoteMessage?> getInitialMessage() => fcm!.getInitialMessage();

  @override
  Future<String?> getToken({String? vapidKey}) => fcm!.getToken();

  @override
  void onBackgroundMessage(Future<void> Function(RemoteMessage p1) handler) =>
      FirebaseMessaging.onBackgroundMessage(handler);

  @override
  StreamSubscription<RemoteMessage> onMessageAppListen(
    void Function(RemoteMessage p1)? onData,
  ) =>
      FirebaseMessaging.onMessage.listen(onData);

  @override
  StreamSubscription<RemoteMessage> onMessageOpenedAppListen(
    void Function(RemoteMessage p1)? onData,
  ) =>
      FirebaseMessaging.onMessageOpenedApp.listen(onData);

  @override
  Future<NotificationSettings> requestPermission() => fcm!.requestPermission();
}
