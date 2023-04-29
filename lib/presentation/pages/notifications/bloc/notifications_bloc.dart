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
    on<_RemoveNotification>(_removeNotification);
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
    ));
  }

  void _removeNotification(
    _RemoveNotification event,
    Emitter<NotificationsState> emit,
  ) {
    currentNotifications.removeWhere(
      (element) => element.notificationId == event.notificationId,
    );
    getIt
        .get<NotificationsRepository>()
        .removeNotification(event.notificationId);
    emit(NotificationsState.itemsFetched(
      items: filteredNotifications.toList(),
      fetchedAll: _fetchedAll,
    ));
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
  }
}
