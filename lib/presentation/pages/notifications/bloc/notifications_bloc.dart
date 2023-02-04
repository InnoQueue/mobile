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

  NotificationsBloc() : super(const _Initial()) {
    on<_FetchNotifications>(_fetchNotifications);
  }

  bool _isLoading = false;
  Future<void> _fetchNotifications(
      _FetchNotifications event, Emitter<NotificationsState> emit) async {
    if (_isLoading) return;

    _isLoading = true;
    var notificationsResponse =
        await getIt.get<NotificationsRepository>().getNotifications(
              page: _page,
              size: _size,
            );
    currentNotifications.addAll(notificationsResponse.content);
    _page++;

    emit(NotificationsState.itemsFetched(
      items: currentNotifications.toList(),
      fetchedAll: notificationsResponse.last,
    ));

    _isLoading = false;
  }

  void readNotification(int id) {
    getIt.get<NotificationsRepository>().readNotification(id);
  }
}
