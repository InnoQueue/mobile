import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../application/application.dart';
import '../../../domain/domain.dart';
import '../../presentation.dart';

@Singleton()
class FirebaseNotifcationsCubit extends Cubit<RemoteMessage?> {
  FirebaseNotifcationsCubit(this._firebaseMessagingRepository) : super(null);

  final FirebaseMessagingRepository _firebaseMessagingRepository;

  RemoteMessage? initialMessage;

  StreamSubscription? openedAppMessageStream;
  StreamSubscription? messageStream;

  @PostConstruct(preResolve: true)
  Future<void> initPushNotifications() async {
    await _firebaseMessagingRepository.requestPermission();
    String? fcmToken = await _firebaseMessagingRepository.getToken();
    if (kDebugMode) {
      print("==== FCM TOKEN ====");
      print(fcmToken);
      print("===================");
    }

    _firebaseMessagingRepository
        .onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    openedAppMessageStream =
        _firebaseMessagingRepository.onMessageOpenedAppListen((event) {
      if (event.data['queue_id'] != null) {
        getIt.get<AppRouter>().push(
              QueueRouter(
                id: int.parse(event.data['queue_id']),
              ),
            );
      }
    });

    messageStream = _firebaseMessagingRepository.onMessageOpenedAppListen(
      emit,
    );

    initialMessage = await _firebaseMessagingRepository.getInitialMessage();
  }

  void emitNoNotification() {
    emit(null);
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) =>
    Future.delayed(Duration.zero, () {
      if (kDebugMode) {
        //WHEN APP IS HIDDEN
        print("Handling a background message: $message");
      }
    });
