// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueueDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int queueId) fetchQueue,
    required TResult Function(double? expenses) completeTask,
    required TResult Function() skipTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int queueId)? fetchQueue,
    TResult? Function(double? expenses)? completeTask,
    TResult? Function()? skipTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int queueId)? fetchQueue,
    TResult Function(double? expenses)? completeTask,
    TResult Function()? skipTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQueue value) fetchQueue,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_SkipTask value) skipTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQueue value)? fetchQueue,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_SkipTask value)? skipTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQueue value)? fetchQueue,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_SkipTask value)? skipTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueDetailsEventCopyWith<$Res> {
  factory $QueueDetailsEventCopyWith(
          QueueDetailsEvent value, $Res Function(QueueDetailsEvent) then) =
      _$QueueDetailsEventCopyWithImpl<$Res, QueueDetailsEvent>;
}

/// @nodoc
class _$QueueDetailsEventCopyWithImpl<$Res, $Val extends QueueDetailsEvent>
    implements $QueueDetailsEventCopyWith<$Res> {
  _$QueueDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchQueueCopyWith<$Res> {
  factory _$$_FetchQueueCopyWith(
          _$_FetchQueue value, $Res Function(_$_FetchQueue) then) =
      __$$_FetchQueueCopyWithImpl<$Res>;
  @useResult
  $Res call({int queueId});
}

/// @nodoc
class __$$_FetchQueueCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res, _$_FetchQueue>
    implements _$$_FetchQueueCopyWith<$Res> {
  __$$_FetchQueueCopyWithImpl(
      _$_FetchQueue _value, $Res Function(_$_FetchQueue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueId = null,
  }) {
    return _then(_$_FetchQueue(
      null == queueId
          ? _value.queueId
          : queueId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchQueue implements _FetchQueue {
  const _$_FetchQueue(this.queueId);

  @override
  final int queueId;

  @override
  String toString() {
    return 'QueueDetailsEvent.fetchQueue(queueId: $queueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchQueue &&
            (identical(other.queueId, queueId) || other.queueId == queueId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchQueueCopyWith<_$_FetchQueue> get copyWith =>
      __$$_FetchQueueCopyWithImpl<_$_FetchQueue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int queueId) fetchQueue,
    required TResult Function(double? expenses) completeTask,
    required TResult Function() skipTask,
  }) {
    return fetchQueue(queueId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int queueId)? fetchQueue,
    TResult? Function(double? expenses)? completeTask,
    TResult? Function()? skipTask,
  }) {
    return fetchQueue?.call(queueId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int queueId)? fetchQueue,
    TResult Function(double? expenses)? completeTask,
    TResult Function()? skipTask,
    required TResult orElse(),
  }) {
    if (fetchQueue != null) {
      return fetchQueue(queueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQueue value) fetchQueue,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_SkipTask value) skipTask,
  }) {
    return fetchQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQueue value)? fetchQueue,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_SkipTask value)? skipTask,
  }) {
    return fetchQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQueue value)? fetchQueue,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_SkipTask value)? skipTask,
    required TResult orElse(),
  }) {
    if (fetchQueue != null) {
      return fetchQueue(this);
    }
    return orElse();
  }
}

abstract class _FetchQueue implements QueueDetailsEvent {
  const factory _FetchQueue(final int queueId) = _$_FetchQueue;

  int get queueId;
  @JsonKey(ignore: true)
  _$$_FetchQueueCopyWith<_$_FetchQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompleteTaskCopyWith<$Res> {
  factory _$$_CompleteTaskCopyWith(
          _$_CompleteTask value, $Res Function(_$_CompleteTask) then) =
      __$$_CompleteTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({double? expenses});
}

/// @nodoc
class __$$_CompleteTaskCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res, _$_CompleteTask>
    implements _$$_CompleteTaskCopyWith<$Res> {
  __$$_CompleteTaskCopyWithImpl(
      _$_CompleteTask _value, $Res Function(_$_CompleteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = freezed,
  }) {
    return _then(_$_CompleteTask(
      expenses: freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_CompleteTask implements _CompleteTask {
  const _$_CompleteTask({this.expenses});

  @override
  final double? expenses;

  @override
  String toString() {
    return 'QueueDetailsEvent.completeTask(expenses: $expenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteTask &&
            (identical(other.expenses, expenses) ||
                other.expenses == expenses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompleteTaskCopyWith<_$_CompleteTask> get copyWith =>
      __$$_CompleteTaskCopyWithImpl<_$_CompleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int queueId) fetchQueue,
    required TResult Function(double? expenses) completeTask,
    required TResult Function() skipTask,
  }) {
    return completeTask(expenses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int queueId)? fetchQueue,
    TResult? Function(double? expenses)? completeTask,
    TResult? Function()? skipTask,
  }) {
    return completeTask?.call(expenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int queueId)? fetchQueue,
    TResult Function(double? expenses)? completeTask,
    TResult Function()? skipTask,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(expenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQueue value) fetchQueue,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_SkipTask value) skipTask,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQueue value)? fetchQueue,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_SkipTask value)? skipTask,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQueue value)? fetchQueue,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_SkipTask value)? skipTask,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class _CompleteTask implements QueueDetailsEvent {
  const factory _CompleteTask({final double? expenses}) = _$_CompleteTask;

  double? get expenses;
  @JsonKey(ignore: true)
  _$$_CompleteTaskCopyWith<_$_CompleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SkipTaskCopyWith<$Res> {
  factory _$$_SkipTaskCopyWith(
          _$_SkipTask value, $Res Function(_$_SkipTask) then) =
      __$$_SkipTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SkipTaskCopyWithImpl<$Res>
    extends _$QueueDetailsEventCopyWithImpl<$Res, _$_SkipTask>
    implements _$$_SkipTaskCopyWith<$Res> {
  __$$_SkipTaskCopyWithImpl(
      _$_SkipTask _value, $Res Function(_$_SkipTask) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SkipTask implements _SkipTask {
  const _$_SkipTask();

  @override
  String toString() {
    return 'QueueDetailsEvent.skipTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SkipTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int queueId) fetchQueue,
    required TResult Function(double? expenses) completeTask,
    required TResult Function() skipTask,
  }) {
    return skipTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int queueId)? fetchQueue,
    TResult? Function(double? expenses)? completeTask,
    TResult? Function()? skipTask,
  }) {
    return skipTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int queueId)? fetchQueue,
    TResult Function(double? expenses)? completeTask,
    TResult Function()? skipTask,
    required TResult orElse(),
  }) {
    if (skipTask != null) {
      return skipTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQueue value) fetchQueue,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_SkipTask value) skipTask,
  }) {
    return skipTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQueue value)? fetchQueue,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_SkipTask value)? skipTask,
  }) {
    return skipTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQueue value)? fetchQueue,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_SkipTask value)? skipTask,
    required TResult orElse(),
  }) {
    if (skipTask != null) {
      return skipTask(this);
    }
    return orElse();
  }
}

abstract class _SkipTask implements QueueDetailsEvent {
  const factory _SkipTask() = _$_SkipTask;
}

/// @nodoc
mixin _$QueueDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueueModel queue) queueFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueueModel queue)? queueFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue)? queueFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QueueFetched value) queueFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QueueFetched value)? queueFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueFetched value)? queueFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueDetailsStateCopyWith<$Res> {
  factory $QueueDetailsStateCopyWith(
          QueueDetailsState value, $Res Function(QueueDetailsState) then) =
      _$QueueDetailsStateCopyWithImpl<$Res, QueueDetailsState>;
}

/// @nodoc
class _$QueueDetailsStateCopyWithImpl<$Res, $Val extends QueueDetailsState>
    implements $QueueDetailsStateCopyWith<$Res> {
  _$QueueDetailsStateCopyWithImpl(this._value, this._then);

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
    extends _$QueueDetailsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'QueueDetailsState.initial()';
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
    required TResult Function(QueueModel queue) queueFetched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueueModel queue)? queueFetched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue)? queueFetched,
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
    required TResult Function(_QueueFetched value) queueFetched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QueueFetched value)? queueFetched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueFetched value)? queueFetched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QueueDetailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_QueueFetchedCopyWith<$Res> {
  factory _$$_QueueFetchedCopyWith(
          _$_QueueFetched value, $Res Function(_$_QueueFetched) then) =
      __$$_QueueFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({QueueModel queue});

  $QueueModelCopyWith<$Res> get queue;
}

/// @nodoc
class __$$_QueueFetchedCopyWithImpl<$Res>
    extends _$QueueDetailsStateCopyWithImpl<$Res, _$_QueueFetched>
    implements _$$_QueueFetchedCopyWith<$Res> {
  __$$_QueueFetchedCopyWithImpl(
      _$_QueueFetched _value, $Res Function(_$_QueueFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queue = null,
  }) {
    return _then(_$_QueueFetched(
      null == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as QueueModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QueueModelCopyWith<$Res> get queue {
    return $QueueModelCopyWith<$Res>(_value.queue, (value) {
      return _then(_value.copyWith(queue: value));
    });
  }
}

/// @nodoc

class _$_QueueFetched implements _QueueFetched {
  const _$_QueueFetched(this.queue);

  @override
  final QueueModel queue;

  @override
  String toString() {
    return 'QueueDetailsState.queueFetched(queue: $queue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueueFetched &&
            (identical(other.queue, queue) || other.queue == queue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueueFetchedCopyWith<_$_QueueFetched> get copyWith =>
      __$$_QueueFetchedCopyWithImpl<_$_QueueFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueueModel queue) queueFetched,
  }) {
    return queueFetched(queue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueueModel queue)? queueFetched,
  }) {
    return queueFetched?.call(queue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueueModel queue)? queueFetched,
    required TResult orElse(),
  }) {
    if (queueFetched != null) {
      return queueFetched(queue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QueueFetched value) queueFetched,
  }) {
    return queueFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QueueFetched value)? queueFetched,
  }) {
    return queueFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QueueFetched value)? queueFetched,
    required TResult orElse(),
  }) {
    if (queueFetched != null) {
      return queueFetched(this);
    }
    return orElse();
  }
}

abstract class _QueueFetched implements QueueDetailsState {
  const factory _QueueFetched(final QueueModel queue) = _$_QueueFetched;

  QueueModel get queue;
  @JsonKey(ignore: true)
  _$$_QueueFetchedCopyWith<_$_QueueFetched> get copyWith =>
      throw _privateConstructorUsedError;
}