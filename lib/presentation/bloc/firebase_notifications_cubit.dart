import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class FirebaseNotifcationsCubit extends Cubit<String?> {
  FirebaseNotifcationsCubit() : super(null) {
    _initPushNotifications();
  }

  final FirebaseMessaging fcm = FirebaseMessaging.instance;

  void _initPushNotifications() async {
    await fcm.requestPermission();
    String? fcmToken = await fcm.getToken();
    if (kDebugMode) {
      print("==== FCM TOKEN ====");
      print(fcmToken);
      print("===================");
    }

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) =>
    Future.delayed(Duration.zero, () {
      if (kDebugMode) {
        print("Handling a background message: ${message}");
      }
    });
