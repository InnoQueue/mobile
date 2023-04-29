import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../application/application.dart';
import '../../data/data.dart';
import '../presentation.dart';

@Singleton()
class FirebaseNotifcationsCubit extends Cubit<RemoteMessage?> {
  FirebaseNotifcationsCubit() : super(null) {
    _initPushNotifications();
    _checkInitialNotification();
  }

  final FirebaseMessaging fcm = FirebaseMessaging.instance;
  StreamSubscription? openedAppMessageStream;
  StreamSubscription? messageStream;

  void _initPushNotifications() async {
    await fcm.requestPermission();
    String? fcmToken = await fcm.getToken();
    if (kDebugMode) {
      print("==== FCM TOKEN ====");
      print(fcmToken);
      print("===================");
    }

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    openedAppMessageStream =
        FirebaseMessaging.onMessageOpenedApp.listen((event) {
      if (event.data['queue_id'] != null) {
        getIt.get<AppRouter>().push(
              QueueRouter(
                id: int.parse(event.data['queue_id']),
              ),
            );
      }
    });

    messageStream = FirebaseMessaging.onMessage.listen(
      emit,
    );
  }

  void _checkInitialNotification() async {
    RemoteMessage? message =
        await FirebaseMessaging.instance.getInitialMessage();
    if (message != null) {
      emit(message);
    }
  }

  void emitNoNotification() {
    emit(null);
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) =>
    Future.delayed(Duration.zero, () {
      if (kDebugMode) {
        //WHEN APP IS HIDDEN
        print("Handling a background message: ${message}");
      }
    });
