// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<NotificationModel> items, bool fetchedAll,
            NotificationModel? removedBySwipe)
        itemsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationModel> items, bool fetchedAll,
            NotificationModel? removedBySwipe)?
        itemsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationModel> items, bool fetchedAll,
            NotificationModel? removedBySwipe)?
        itemsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ItemsFetched value) itemsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ItemsFetched value)? itemsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ItemsFetched value)? itemsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotificationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<NotificationModel> items, bool fetchedAll,
            NotificationModel? removedBySwipe)
        itemsFetched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationModel> items, bool fetchedAll,
            NotificationModel? removedBySwipe)?
        itemsFetched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationModel> items, bool fetchedAll,
            NotificationModel? removedBySwipe)?
        itemsFetched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ItemsFetched value) itemsFetched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ItemsFetched value)? itemsFetched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ItemsFetched value)? itemsFetched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ItemsFetchedCopyWith<$Res> {
  factory _$$_ItemsFetchedCopyWith(
          _$_ItemsFetched value, $Res Function(_$_ItemsFetched) then) =
      __$$_ItemsFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<NotificationModel> items,
      bool fetchedAll,
      NotificationModel? removedBySwipe});

  $NotificationModelCopyWith<$Res>? get removedBySwipe;
}

/// @nodoc
class __$$_ItemsFetchedCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_ItemsFetched>
    implements _$$_ItemsFetchedCopyWith<$Res> {
  __$$_ItemsFetchedCopyWithImpl(
      _$_ItemsFetched _value, $Res Function(_$_ItemsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? fetchedAll = null,
    Object? removedBySwipe = freezed,
  }) {
    return _then(_$_ItemsFetched(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      fetchedAll: null == fetchedAll
          ? _value.fetchedAll
          : fetchedAll // ignore: cast_nullable_to_non_nullable
              as bool,
      removedBySwipe: freezed == removedBySwipe
          ? _value.removedBySwipe
          : removedBySwipe // ignore: cast_nullable_to_non_nullable
              as NotificationModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<$Res>? get removedBySwipe {
    if (_value.removedBySwipe == null) {
      return null;
    }

    return $NotificationModelCopyWith<$Res>(_value.removedBySwipe!, (value) {
      return _then(_value.copyWith(removedBySwipe: value));
    });
  }
}

/// @nodoc

class _$_ItemsFetched implements _ItemsFetched {
  const _$_ItemsFetched(
      {required final List<NotificationModel> items,
      required this.fetchedAll,
      required this.removedBySwipe})
      : _items = items;

  final List<NotificationModel> _items;
  @override
  List<NotificationModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool fetchedAll;
  @override
  final NotificationModel? removedBySwipe;

  @override
  String toString() {
    return 'NotificationsState.itemsFetched(items: $items, fetchedAll: $fetchedAll, removedBySwipe: $removedBySwipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemsFetched &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.fetchedAll, fetchedAll) ||
                other.fetchedAll == fetchedAll) &&
            (identical(other.removedBySwipe, removedBySwipe) ||
                other.removedBySwipe == removedBySwipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), fetchedAll, removedBySwipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsFetchedCopyWith<_$_ItemsFetched> get copyWith =>
      __$$_ItemsFetchedCopyWithImpl<_$_ItemsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<NotificationModel> items, bool fetchedAll,
            NotificationModel? removedBySwipe)
        itemsFetched,
  }) {
    return itemsFetched(items, fetchedAll, removedBySwipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationModel> items, bool fetchedAll,
            NotificationModel? removedBySwipe)?
        itemsFetched,
  }) {
    return itemsFetched?.call(items, fetchedAll, removedBySwipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationModel> items, bool fetchedAll,
            NotificationModel? removedBySwipe)?
        itemsFetched,
    required TResult orElse(),
  }) {
    if (itemsFetched != null) {
      return itemsFetched(items, fetchedAll, removedBySwipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ItemsFetched value) itemsFetched,
  }) {
    return itemsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ItemsFetched value)? itemsFetched,
  }) {
    return itemsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ItemsFetched value)? itemsFetched,
    required TResult orElse(),
  }) {
    if (itemsFetched != null) {
      return itemsFetched(this);
    }
    return orElse();
  }
}

abstract class _ItemsFetched implements NotificationsState {
  const factory _ItemsFetched(
      {required final List<NotificationModel> items,
      required final bool fetchedAll,
      required final NotificationModel? removedBySwipe}) = _$_ItemsFetched;

  List<NotificationModel> get items;
  bool get fetchedAll;
  NotificationModel? get removedBySwipe;
  @JsonKey(ignore: true)
  _$$_ItemsFetchedCopyWith<_$_ItemsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotifications,
    required TResult Function(int notificationId) removeBySwipe,
    required TResult Function(List<int> notificationIds) removeNotifications,
    required TResult Function() removeAllNotifications,
    required TResult Function(bool showLoading) updateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotifications,
    TResult? Function(int notificationId)? removeBySwipe,
    TResult? Function(List<int> notificationIds)? removeNotifications,
    TResult? Function()? removeAllNotifications,
    TResult? Function(bool showLoading)? updateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotifications,
    TResult Function(int notificationId)? removeBySwipe,
    TResult Function(List<int> notificationIds)? removeNotifications,
    TResult Function()? removeAllNotifications,
    TResult Function(bool showLoading)? updateNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotifications value) fetchNotifications,
    required TResult Function(_RemoveBySwipe value) removeBySwipe,
    required TResult Function(_RemoveNotifications value) removeNotifications,
    required TResult Function(_RemoveAllNotifications value)
        removeAllNotifications,
    required TResult Function(_UpdateNotifications value) updateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotifications value)? fetchNotifications,
    TResult? Function(_RemoveBySwipe value)? removeBySwipe,
    TResult? Function(_RemoveNotifications value)? removeNotifications,
    TResult? Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult? Function(_UpdateNotifications value)? updateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotifications value)? fetchNotifications,
    TResult Function(_RemoveBySwipe value)? removeBySwipe,
    TResult Function(_RemoveNotifications value)? removeNotifications,
    TResult Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult Function(_UpdateNotifications value)? updateNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchNotificationsCopyWith<$Res> {
  factory _$$_FetchNotificationsCopyWith(_$_FetchNotifications value,
          $Res Function(_$_FetchNotifications) then) =
      __$$_FetchNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_FetchNotifications>
    implements _$$_FetchNotificationsCopyWith<$Res> {
  __$$_FetchNotificationsCopyWithImpl(
      _$_FetchNotifications _value, $Res Function(_$_FetchNotifications) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchNotifications implements _FetchNotifications {
  const _$_FetchNotifications();

  @override
  String toString() {
    return 'NotificationsEvent.fetchNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotifications,
    required TResult Function(int notificationId) removeBySwipe,
    required TResult Function(List<int> notificationIds) removeNotifications,
    required TResult Function() removeAllNotifications,
    required TResult Function(bool showLoading) updateNotifications,
  }) {
    return fetchNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotifications,
    TResult? Function(int notificationId)? removeBySwipe,
    TResult? Function(List<int> notificationIds)? removeNotifications,
    TResult? Function()? removeAllNotifications,
    TResult? Function(bool showLoading)? updateNotifications,
  }) {
    return fetchNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotifications,
    TResult Function(int notificationId)? removeBySwipe,
    TResult Function(List<int> notificationIds)? removeNotifications,
    TResult Function()? removeAllNotifications,
    TResult Function(bool showLoading)? updateNotifications,
    required TResult orElse(),
  }) {
    if (fetchNotifications != null) {
      return fetchNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotifications value) fetchNotifications,
    required TResult Function(_RemoveBySwipe value) removeBySwipe,
    required TResult Function(_RemoveNotifications value) removeNotifications,
    required TResult Function(_RemoveAllNotifications value)
        removeAllNotifications,
    required TResult Function(_UpdateNotifications value) updateNotifications,
  }) {
    return fetchNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotifications value)? fetchNotifications,
    TResult? Function(_RemoveBySwipe value)? removeBySwipe,
    TResult? Function(_RemoveNotifications value)? removeNotifications,
    TResult? Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult? Function(_UpdateNotifications value)? updateNotifications,
  }) {
    return fetchNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotifications value)? fetchNotifications,
    TResult Function(_RemoveBySwipe value)? removeBySwipe,
    TResult Function(_RemoveNotifications value)? removeNotifications,
    TResult Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult Function(_UpdateNotifications value)? updateNotifications,
    required TResult orElse(),
  }) {
    if (fetchNotifications != null) {
      return fetchNotifications(this);
    }
    return orElse();
  }
}

abstract class _FetchNotifications implements NotificationsEvent {
  const factory _FetchNotifications() = _$_FetchNotifications;
}

/// @nodoc
abstract class _$$_RemoveBySwipeCopyWith<$Res> {
  factory _$$_RemoveBySwipeCopyWith(
          _$_RemoveBySwipe value, $Res Function(_$_RemoveBySwipe) then) =
      __$$_RemoveBySwipeCopyWithImpl<$Res>;
  @useResult
  $Res call({int notificationId});
}

/// @nodoc
class __$$_RemoveBySwipeCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_RemoveBySwipe>
    implements _$$_RemoveBySwipeCopyWith<$Res> {
  __$$_RemoveBySwipeCopyWithImpl(
      _$_RemoveBySwipe _value, $Res Function(_$_RemoveBySwipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
  }) {
    return _then(_$_RemoveBySwipe(
      null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveBySwipe implements _RemoveBySwipe {
  const _$_RemoveBySwipe(this.notificationId);

  @override
  final int notificationId;

  @override
  String toString() {
    return 'NotificationsEvent.removeBySwipe(notificationId: $notificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveBySwipe &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveBySwipeCopyWith<_$_RemoveBySwipe> get copyWith =>
      __$$_RemoveBySwipeCopyWithImpl<_$_RemoveBySwipe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotifications,
    required TResult Function(int notificationId) removeBySwipe,
    required TResult Function(List<int> notificationIds) removeNotifications,
    required TResult Function() removeAllNotifications,
    required TResult Function(bool showLoading) updateNotifications,
  }) {
    return removeBySwipe(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotifications,
    TResult? Function(int notificationId)? removeBySwipe,
    TResult? Function(List<int> notificationIds)? removeNotifications,
    TResult? Function()? removeAllNotifications,
    TResult? Function(bool showLoading)? updateNotifications,
  }) {
    return removeBySwipe?.call(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotifications,
    TResult Function(int notificationId)? removeBySwipe,
    TResult Function(List<int> notificationIds)? removeNotifications,
    TResult Function()? removeAllNotifications,
    TResult Function(bool showLoading)? updateNotifications,
    required TResult orElse(),
  }) {
    if (removeBySwipe != null) {
      return removeBySwipe(notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotifications value) fetchNotifications,
    required TResult Function(_RemoveBySwipe value) removeBySwipe,
    required TResult Function(_RemoveNotifications value) removeNotifications,
    required TResult Function(_RemoveAllNotifications value)
        removeAllNotifications,
    required TResult Function(_UpdateNotifications value) updateNotifications,
  }) {
    return removeBySwipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotifications value)? fetchNotifications,
    TResult? Function(_RemoveBySwipe value)? removeBySwipe,
    TResult? Function(_RemoveNotifications value)? removeNotifications,
    TResult? Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult? Function(_UpdateNotifications value)? updateNotifications,
  }) {
    return removeBySwipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotifications value)? fetchNotifications,
    TResult Function(_RemoveBySwipe value)? removeBySwipe,
    TResult Function(_RemoveNotifications value)? removeNotifications,
    TResult Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult Function(_UpdateNotifications value)? updateNotifications,
    required TResult orElse(),
  }) {
    if (removeBySwipe != null) {
      return removeBySwipe(this);
    }
    return orElse();
  }
}

abstract class _RemoveBySwipe implements NotificationsEvent {
  const factory _RemoveBySwipe(final int notificationId) = _$_RemoveBySwipe;

  int get notificationId;
  @JsonKey(ignore: true)
  _$$_RemoveBySwipeCopyWith<_$_RemoveBySwipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveNotificationsCopyWith<$Res> {
  factory _$$_RemoveNotificationsCopyWith(_$_RemoveNotifications value,
          $Res Function(_$_RemoveNotifications) then) =
      __$$_RemoveNotificationsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> notificationIds});
}

/// @nodoc
class __$$_RemoveNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_RemoveNotifications>
    implements _$$_RemoveNotificationsCopyWith<$Res> {
  __$$_RemoveNotificationsCopyWithImpl(_$_RemoveNotifications _value,
      $Res Function(_$_RemoveNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationIds = null,
  }) {
    return _then(_$_RemoveNotifications(
      null == notificationIds
          ? _value._notificationIds
          : notificationIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_RemoveNotifications implements _RemoveNotifications {
  const _$_RemoveNotifications(final List<int> notificationIds)
      : _notificationIds = notificationIds;

  final List<int> _notificationIds;
  @override
  List<int> get notificationIds {
    if (_notificationIds is EqualUnmodifiableListView) return _notificationIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationIds);
  }

  @override
  String toString() {
    return 'NotificationsEvent.removeNotifications(notificationIds: $notificationIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveNotifications &&
            const DeepCollectionEquality()
                .equals(other._notificationIds, _notificationIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notificationIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveNotificationsCopyWith<_$_RemoveNotifications> get copyWith =>
      __$$_RemoveNotificationsCopyWithImpl<_$_RemoveNotifications>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotifications,
    required TResult Function(int notificationId) removeBySwipe,
    required TResult Function(List<int> notificationIds) removeNotifications,
    required TResult Function() removeAllNotifications,
    required TResult Function(bool showLoading) updateNotifications,
  }) {
    return removeNotifications(notificationIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotifications,
    TResult? Function(int notificationId)? removeBySwipe,
    TResult? Function(List<int> notificationIds)? removeNotifications,
    TResult? Function()? removeAllNotifications,
    TResult? Function(bool showLoading)? updateNotifications,
  }) {
    return removeNotifications?.call(notificationIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotifications,
    TResult Function(int notificationId)? removeBySwipe,
    TResult Function(List<int> notificationIds)? removeNotifications,
    TResult Function()? removeAllNotifications,
    TResult Function(bool showLoading)? updateNotifications,
    required TResult orElse(),
  }) {
    if (removeNotifications != null) {
      return removeNotifications(notificationIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotifications value) fetchNotifications,
    required TResult Function(_RemoveBySwipe value) removeBySwipe,
    required TResult Function(_RemoveNotifications value) removeNotifications,
    required TResult Function(_RemoveAllNotifications value)
        removeAllNotifications,
    required TResult Function(_UpdateNotifications value) updateNotifications,
  }) {
    return removeNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotifications value)? fetchNotifications,
    TResult? Function(_RemoveBySwipe value)? removeBySwipe,
    TResult? Function(_RemoveNotifications value)? removeNotifications,
    TResult? Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult? Function(_UpdateNotifications value)? updateNotifications,
  }) {
    return removeNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotifications value)? fetchNotifications,
    TResult Function(_RemoveBySwipe value)? removeBySwipe,
    TResult Function(_RemoveNotifications value)? removeNotifications,
    TResult Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult Function(_UpdateNotifications value)? updateNotifications,
    required TResult orElse(),
  }) {
    if (removeNotifications != null) {
      return removeNotifications(this);
    }
    return orElse();
  }
}

abstract class _RemoveNotifications implements NotificationsEvent {
  const factory _RemoveNotifications(final List<int> notificationIds) =
      _$_RemoveNotifications;

  List<int> get notificationIds;
  @JsonKey(ignore: true)
  _$$_RemoveNotificationsCopyWith<_$_RemoveNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveAllNotificationsCopyWith<$Res> {
  factory _$$_RemoveAllNotificationsCopyWith(_$_RemoveAllNotifications value,
          $Res Function(_$_RemoveAllNotifications) then) =
      __$$_RemoveAllNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoveAllNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_RemoveAllNotifications>
    implements _$$_RemoveAllNotificationsCopyWith<$Res> {
  __$$_RemoveAllNotificationsCopyWithImpl(_$_RemoveAllNotifications _value,
      $Res Function(_$_RemoveAllNotifications) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RemoveAllNotifications implements _RemoveAllNotifications {
  const _$_RemoveAllNotifications();

  @override
  String toString() {
    return 'NotificationsEvent.removeAllNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveAllNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotifications,
    required TResult Function(int notificationId) removeBySwipe,
    required TResult Function(List<int> notificationIds) removeNotifications,
    required TResult Function() removeAllNotifications,
    required TResult Function(bool showLoading) updateNotifications,
  }) {
    return removeAllNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotifications,
    TResult? Function(int notificationId)? removeBySwipe,
    TResult? Function(List<int> notificationIds)? removeNotifications,
    TResult? Function()? removeAllNotifications,
    TResult? Function(bool showLoading)? updateNotifications,
  }) {
    return removeAllNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotifications,
    TResult Function(int notificationId)? removeBySwipe,
    TResult Function(List<int> notificationIds)? removeNotifications,
    TResult Function()? removeAllNotifications,
    TResult Function(bool showLoading)? updateNotifications,
    required TResult orElse(),
  }) {
    if (removeAllNotifications != null) {
      return removeAllNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotifications value) fetchNotifications,
    required TResult Function(_RemoveBySwipe value) removeBySwipe,
    required TResult Function(_RemoveNotifications value) removeNotifications,
    required TResult Function(_RemoveAllNotifications value)
        removeAllNotifications,
    required TResult Function(_UpdateNotifications value) updateNotifications,
  }) {
    return removeAllNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotifications value)? fetchNotifications,
    TResult? Function(_RemoveBySwipe value)? removeBySwipe,
    TResult? Function(_RemoveNotifications value)? removeNotifications,
    TResult? Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult? Function(_UpdateNotifications value)? updateNotifications,
  }) {
    return removeAllNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotifications value)? fetchNotifications,
    TResult Function(_RemoveBySwipe value)? removeBySwipe,
    TResult Function(_RemoveNotifications value)? removeNotifications,
    TResult Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult Function(_UpdateNotifications value)? updateNotifications,
    required TResult orElse(),
  }) {
    if (removeAllNotifications != null) {
      return removeAllNotifications(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllNotifications implements NotificationsEvent {
  const factory _RemoveAllNotifications() = _$_RemoveAllNotifications;
}

/// @nodoc
abstract class _$$_UpdateNotificationsCopyWith<$Res> {
  factory _$$_UpdateNotificationsCopyWith(_$_UpdateNotifications value,
          $Res Function(_$_UpdateNotifications) then) =
      __$$_UpdateNotificationsCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showLoading});
}

/// @nodoc
class __$$_UpdateNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_UpdateNotifications>
    implements _$$_UpdateNotificationsCopyWith<$Res> {
  __$$_UpdateNotificationsCopyWithImpl(_$_UpdateNotifications _value,
      $Res Function(_$_UpdateNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoading = null,
  }) {
    return _then(_$_UpdateNotifications(
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateNotifications implements _UpdateNotifications {
  const _$_UpdateNotifications({required this.showLoading});

  @override
  final bool showLoading;

  @override
  String toString() {
    return 'NotificationsEvent.updateNotifications(showLoading: $showLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNotifications &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateNotificationsCopyWith<_$_UpdateNotifications> get copyWith =>
      __$$_UpdateNotificationsCopyWithImpl<_$_UpdateNotifications>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotifications,
    required TResult Function(int notificationId) removeBySwipe,
    required TResult Function(List<int> notificationIds) removeNotifications,
    required TResult Function() removeAllNotifications,
    required TResult Function(bool showLoading) updateNotifications,
  }) {
    return updateNotifications(showLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotifications,
    TResult? Function(int notificationId)? removeBySwipe,
    TResult? Function(List<int> notificationIds)? removeNotifications,
    TResult? Function()? removeAllNotifications,
    TResult? Function(bool showLoading)? updateNotifications,
  }) {
    return updateNotifications?.call(showLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotifications,
    TResult Function(int notificationId)? removeBySwipe,
    TResult Function(List<int> notificationIds)? removeNotifications,
    TResult Function()? removeAllNotifications,
    TResult Function(bool showLoading)? updateNotifications,
    required TResult orElse(),
  }) {
    if (updateNotifications != null) {
      return updateNotifications(showLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotifications value) fetchNotifications,
    required TResult Function(_RemoveBySwipe value) removeBySwipe,
    required TResult Function(_RemoveNotifications value) removeNotifications,
    required TResult Function(_RemoveAllNotifications value)
        removeAllNotifications,
    required TResult Function(_UpdateNotifications value) updateNotifications,
  }) {
    return updateNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotifications value)? fetchNotifications,
    TResult? Function(_RemoveBySwipe value)? removeBySwipe,
    TResult? Function(_RemoveNotifications value)? removeNotifications,
    TResult? Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult? Function(_UpdateNotifications value)? updateNotifications,
  }) {
    return updateNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotifications value)? fetchNotifications,
    TResult Function(_RemoveBySwipe value)? removeBySwipe,
    TResult Function(_RemoveNotifications value)? removeNotifications,
    TResult Function(_RemoveAllNotifications value)? removeAllNotifications,
    TResult Function(_UpdateNotifications value)? updateNotifications,
    required TResult orElse(),
  }) {
    if (updateNotifications != null) {
      return updateNotifications(this);
    }
    return orElse();
  }
}

abstract class _UpdateNotifications implements NotificationsEvent {
  const factory _UpdateNotifications({required final bool showLoading}) =
      _$_UpdateNotifications;

  bool get showLoading;
  @JsonKey(ignore: true)
  _$$_UpdateNotificationsCopyWith<_$_UpdateNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}
