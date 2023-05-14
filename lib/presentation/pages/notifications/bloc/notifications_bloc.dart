import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../application/application.dart';
import '../../../../domain/domain.dart';

part 'notifications_state.dart';
part 'notifications_event.dart';
part 'notifications_bloc.freezed.dart';

@Singleton()
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final int _size = 20;
  int _page = 0;

  List<NotificationModel> currentNotifications = [];
  final List<int> _displayedNotificationIds = [];
  final List<int> _readNotificationIds = [];

  NotificationsBloc() : super(const _Initial()) {
    on<_FetchNotifications>(_fetchNotifications);
    on<_UpdateNotifications>(_updateNotifications);
    on<_RemoveBySwipe>(_removeBySwipe);
    on<_RemoveNotifications>(_removeNotifications);
  }

  bool _isLoading = false;
  Future<void> _fetchNotifications(
    _FetchNotifications event,
    Emitter<NotificationsState> emit,
  ) async {
    if (_isLoading) return;
    _isLoading = true;
    await _fetchNotificationsAndEmit(emit);
    _isLoading = false;
  }

  Future<void> _updateNotifications(
    _UpdateNotifications event,
    Emitter<NotificationsState> emit,
  ) async {
    if (event.showLoading) {
      await readDisplayedNotifications();
      emit(const NotificationsState.initial());
    }

    currentNotifications.clear();
    _readNotificationIds.clear();
    _page = 0;

    await _fetchNotificationsAndEmit(emit);
    getIt
        .get<AnalyticsRepository>()
        .logNotificationsUpdated(); // coverage:ignore-line
  }

  bool _fetchedAll = false;

  Future<void> _fetchNotificationsAndEmit(
    Emitter<NotificationsState> emit,
  ) async {
    var notificationsResponse =
        await getIt.get<NotificationsRepository>().getNotifications(
              page: _page,
              size: _size,
            );

    _fetchedAll = notificationsResponse.last;
    currentNotifications.addAll(notificationsResponse.content);
    _page++;

    emit(NotificationsState.itemsFetched(
      items: filteredNotifications.toList(),
      fetchedAll: _fetchedAll,
      removedBySwipe: null,
    ));
  }

  void _removeBySwipe(
    _RemoveBySwipe event,
    Emitter<NotificationsState> emit,
  ) {
    final NotificationModel removedBySwipe = currentNotifications.firstWhere(
      (element) => element.notificationId == event.notificationId,
    );

    currentNotifications.remove(removedBySwipe);
    getIt
        .get<NotificationsRepository>()
        .removeNotification(event.notificationId);
    emit(NotificationsState.itemsFetched(
      items: filteredNotifications.toList(),
      fetchedAll: _fetchedAll,
      removedBySwipe: removedBySwipe,
    ));
    getIt
        .get<AnalyticsRepository>()
        .logNotificationRemoved(); // coverage:ignore-line
  }

  void _removeNotifications(
    _RemoveNotifications event,
    Emitter<NotificationsState> emit,
  ) {
    currentNotifications.removeWhere(
      (element) => event.notificationIds.contains(element.notificationId),
    );

    getIt
        .get<NotificationsRepository>()
        .removeNotifications(event.notificationIds);

    emit(NotificationsState.itemsFetched(
      items: filteredNotifications.toList(),
      fetchedAll: _fetchedAll,
      removedBySwipe: null,
    ));
    getIt
        .get<AnalyticsRepository>()
        .logNotificationRemoved(); // coverage:ignore-line
  }

  List<NotificationModel> get filteredNotifications => currentNotifications
      .map(
        (e) => e.copyWith(
          read: e.read ? true : _readNotificationIds.contains(e.notificationId),
        ),
      )
      .toList();

  void markNotificationAsDisplayed(int id) {
    if (!_displayedNotificationIds.contains(id)) {
      _displayedNotificationIds.add(id);
    }
  }

  Future<void> readDisplayedNotifications() async {
    await Future.wait(
      _displayedNotificationIds.map(
        (id) => getIt.get<NotificationsRepository>().readNotification(id),
      ),
    );
    _displayedNotificationIds.clear();
    getIt
        .get<AnalyticsRepository>()
        .logNotificationsRead(); // coverage:ignore-line
  }
}
