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
    required TResult Function(List<NotificationModel> items, bool fetchedAll)
        itemsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationModel> items, bool fetchedAll)?
        itemsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationModel> items, bool fetchedAll)?
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
    required TResult Function(List<NotificationModel> items, bool fetchedAll)
        itemsFetched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationModel> items, bool fetchedAll)?
        itemsFetched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationModel> items, bool fetchedAll)?
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
  $Res call({List<NotificationModel> items, bool fetchedAll});
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
    ));
  }
}

/// @nodoc

class _$_ItemsFetched implements _ItemsFetched {
  const _$_ItemsFetched(
      {required final List<NotificationModel> items, required this.fetchedAll})
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
  String toString() {
    return 'NotificationsState.itemsFetched(items: $items, fetchedAll: $fetchedAll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemsFetched &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.fetchedAll, fetchedAll) ||
                other.fetchedAll == fetchedAll));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), fetchedAll);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsFetchedCopyWith<_$_ItemsFetched> get copyWith =>
      __$$_ItemsFetchedCopyWithImpl<_$_ItemsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<NotificationModel> items, bool fetchedAll)
        itemsFetched,
  }) {
    return itemsFetched(items, fetchedAll);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationModel> items, bool fetchedAll)?
        itemsFetched,
  }) {
    return itemsFetched?.call(items, fetchedAll);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationModel> items, bool fetchedAll)?
        itemsFetched,
    required TResult orElse(),
  }) {
    if (itemsFetched != null) {
      return itemsFetched(items, fetchedAll);
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
      required final bool fetchedAll}) = _$_ItemsFetched;

  List<NotificationModel> get items;
  bool get fetchedAll;
  @JsonKey(ignore: true)
  _$$_ItemsFetchedCopyWith<_$_ItemsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotifications,
    required TResult Function() updateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotifications,
    TResult? Function()? updateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotifications,
    TResult Function()? updateNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotifications value) fetchNotifications,
    required TResult Function(_UpdateNotifications value) updateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotifications value)? fetchNotifications,
    TResult? Function(_UpdateNotifications value)? updateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotifications value)? fetchNotifications,
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
    required TResult Function() updateNotifications,
  }) {
    return fetchNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotifications,
    TResult? Function()? updateNotifications,
  }) {
    return fetchNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotifications,
    TResult Function()? updateNotifications,
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
    required TResult Function(_UpdateNotifications value) updateNotifications,
  }) {
    return fetchNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotifications value)? fetchNotifications,
    TResult? Function(_UpdateNotifications value)? updateNotifications,
  }) {
    return fetchNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotifications value)? fetchNotifications,
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
abstract class _$$_UpdateNotificationsCopyWith<$Res> {
  factory _$$_UpdateNotificationsCopyWith(_$_UpdateNotifications value,
          $Res Function(_$_UpdateNotifications) then) =
      __$$_UpdateNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_UpdateNotifications>
    implements _$$_UpdateNotificationsCopyWith<$Res> {
  __$$_UpdateNotificationsCopyWithImpl(_$_UpdateNotifications _value,
      $Res Function(_$_UpdateNotifications) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateNotifications implements _UpdateNotifications {
  const _$_UpdateNotifications();

  @override
  String toString() {
    return 'NotificationsEvent.updateNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotifications,
    required TResult Function() updateNotifications,
  }) {
    return updateNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotifications,
    TResult? Function()? updateNotifications,
  }) {
    return updateNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotifications,
    TResult Function()? updateNotifications,
    required TResult orElse(),
  }) {
    if (updateNotifications != null) {
      return updateNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotifications value) fetchNotifications,
    required TResult Function(_UpdateNotifications value) updateNotifications,
  }) {
    return updateNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotifications value)? fetchNotifications,
    TResult? Function(_UpdateNotifications value)? updateNotifications,
  }) {
    return updateNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotifications value)? fetchNotifications,
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
  const factory _UpdateNotifications() = _$_UpdateNotifications;
}
