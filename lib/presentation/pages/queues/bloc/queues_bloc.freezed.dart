// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queues_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueuesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() emitInitial,
    required TResult Function(String name, String color, bool trackExpenses)
        createQueue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function()? emitInitial,
    TResult? Function(String name, String color, bool trackExpenses)?
        createQueue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? emitInitial,
    TResult Function(String name, String color, bool trackExpenses)?
        createQueue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_EmitInitial value) emitInitial,
    required TResult Function(_CreateQueue value) createQueue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_EmitInitial value)? emitInitial,
    TResult? Function(_CreateQueue value)? createQueue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_EmitInitial value)? emitInitial,
    TResult Function(_CreateQueue value)? createQueue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueuesEventCopyWith<$Res> {
  factory $QueuesEventCopyWith(
          QueuesEvent value, $Res Function(QueuesEvent) then) =
      _$QueuesEventCopyWithImpl<$Res, QueuesEvent>;
}

/// @nodoc
class _$QueuesEventCopyWithImpl<$Res, $Val extends QueuesEvent>
    implements $QueuesEventCopyWith<$Res> {
  _$QueuesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadDataCopyWith<$Res> {
  factory _$$_LoadDataCopyWith(
          _$_LoadData value, $Res Function(_$_LoadData) then) =
      __$$_LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadDataCopyWithImpl<$Res>
    extends _$QueuesEventCopyWithImpl<$Res, _$_LoadData>
    implements _$$_LoadDataCopyWith<$Res> {
  __$$_LoadDataCopyWithImpl(
      _$_LoadData _value, $Res Function(_$_LoadData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadData implements _LoadData {
  const _$_LoadData();

  @override
  String toString() {
    return 'QueuesEvent.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() emitInitial,
    required TResult Function(String name, String color, bool trackExpenses)
        createQueue,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function()? emitInitial,
    TResult? Function(String name, String color, bool trackExpenses)?
        createQueue,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? emitInitial,
    TResult Function(String name, String color, bool trackExpenses)?
        createQueue,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_EmitInitial value) emitInitial,
    required TResult Function(_CreateQueue value) createQueue,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_EmitInitial value)? emitInitial,
    TResult? Function(_CreateQueue value)? createQueue,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_EmitInitial value)? emitInitial,
    TResult Function(_CreateQueue value)? createQueue,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements QueuesEvent {
  const factory _LoadData() = _$_LoadData;
}

/// @nodoc
abstract class _$$_EmitInitialCopyWith<$Res> {
  factory _$$_EmitInitialCopyWith(
          _$_EmitInitial value, $Res Function(_$_EmitInitial) then) =
      __$$_EmitInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmitInitialCopyWithImpl<$Res>
    extends _$QueuesEventCopyWithImpl<$Res, _$_EmitInitial>
    implements _$$_EmitInitialCopyWith<$Res> {
  __$$_EmitInitialCopyWithImpl(
      _$_EmitInitial _value, $Res Function(_$_EmitInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmitInitial implements _EmitInitial {
  const _$_EmitInitial();

  @override
  String toString() {
    return 'QueuesEvent.emitInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmitInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() emitInitial,
    required TResult Function(String name, String color, bool trackExpenses)
        createQueue,
  }) {
    return emitInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function()? emitInitial,
    TResult? Function(String name, String color, bool trackExpenses)?
        createQueue,
  }) {
    return emitInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? emitInitial,
    TResult Function(String name, String color, bool trackExpenses)?
        createQueue,
    required TResult orElse(),
  }) {
    if (emitInitial != null) {
      return emitInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_EmitInitial value) emitInitial,
    required TResult Function(_CreateQueue value) createQueue,
  }) {
    return emitInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_EmitInitial value)? emitInitial,
    TResult? Function(_CreateQueue value)? createQueue,
  }) {
    return emitInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_EmitInitial value)? emitInitial,
    TResult Function(_CreateQueue value)? createQueue,
    required TResult orElse(),
  }) {
    if (emitInitial != null) {
      return emitInitial(this);
    }
    return orElse();
  }
}

abstract class _EmitInitial implements QueuesEvent {
  const factory _EmitInitial() = _$_EmitInitial;
}

/// @nodoc
abstract class _$$_CreateQueueCopyWith<$Res> {
  factory _$$_CreateQueueCopyWith(
          _$_CreateQueue value, $Res Function(_$_CreateQueue) then) =
      __$$_CreateQueueCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String color, bool trackExpenses});
}

/// @nodoc
class __$$_CreateQueueCopyWithImpl<$Res>
    extends _$QueuesEventCopyWithImpl<$Res, _$_CreateQueue>
    implements _$$_CreateQueueCopyWith<$Res> {
  __$$_CreateQueueCopyWithImpl(
      _$_CreateQueue _value, $Res Function(_$_CreateQueue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? trackExpenses = null,
  }) {
    return _then(_$_CreateQueue(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      trackExpenses: null == trackExpenses
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateQueue implements _CreateQueue {
  const _$_CreateQueue(
      {required this.name, required this.color, required this.trackExpenses});

  @override
  final String name;
  @override
  final String color;
  @override
  final bool trackExpenses;

  @override
  String toString() {
    return 'QueuesEvent.createQueue(name: $name, color: $color, trackExpenses: $trackExpenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateQueue &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.trackExpenses, trackExpenses) ||
                other.trackExpenses == trackExpenses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, color, trackExpenses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateQueueCopyWith<_$_CreateQueue> get copyWith =>
      __$$_CreateQueueCopyWithImpl<_$_CreateQueue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() emitInitial,
    required TResult Function(String name, String color, bool trackExpenses)
        createQueue,
  }) {
    return createQueue(name, color, trackExpenses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function()? emitInitial,
    TResult? Function(String name, String color, bool trackExpenses)?
        createQueue,
  }) {
    return createQueue?.call(name, color, trackExpenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? emitInitial,
    TResult Function(String name, String color, bool trackExpenses)?
        createQueue,
    required TResult orElse(),
  }) {
    if (createQueue != null) {
      return createQueue(name, color, trackExpenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_EmitInitial value) emitInitial,
    required TResult Function(_CreateQueue value) createQueue,
  }) {
    return createQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_EmitInitial value)? emitInitial,
    TResult? Function(_CreateQueue value)? createQueue,
  }) {
    return createQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_EmitInitial value)? emitInitial,
    TResult Function(_CreateQueue value)? createQueue,
    required TResult orElse(),
  }) {
    if (createQueue != null) {
      return createQueue(this);
    }
    return orElse();
  }
}

abstract class _CreateQueue implements QueuesEvent {
  const factory _CreateQueue(
      {required final String name,
      required final String color,
      required final bool trackExpenses}) = _$_CreateQueue;

  String get name;
  String get color;
  bool get trackExpenses;
  @JsonKey(ignore: true)
  _$$_CreateQueueCopyWith<_$_CreateQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QueuesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<QueueInfo> tasks) dataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<QueueInfo> tasks)? dataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<QueueInfo> tasks)? dataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoaded value) dataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoaded value)? dataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoaded value)? dataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueuesStateCopyWith<$Res> {
  factory $QueuesStateCopyWith(
          QueuesState value, $Res Function(QueuesState) then) =
      _$QueuesStateCopyWithImpl<$Res, QueuesState>;
}

/// @nodoc
class _$QueuesStateCopyWithImpl<$Res, $Val extends QueuesState>
    implements $QueuesStateCopyWith<$Res> {
  _$QueuesStateCopyWithImpl(this._value, this._then);

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
    extends _$QueuesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'QueuesState.initial()';
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
    required TResult Function(List<QueueInfo> tasks) dataLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<QueueInfo> tasks)? dataLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<QueueInfo> tasks)? dataLoaded,
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
    required TResult Function(_DataLoaded value) dataLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoaded value)? dataLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoaded value)? dataLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QueuesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DataLoadedCopyWith<$Res> {
  factory _$$_DataLoadedCopyWith(
          _$_DataLoaded value, $Res Function(_$_DataLoaded) then) =
      __$$_DataLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QueueInfo> tasks});
}

/// @nodoc
class __$$_DataLoadedCopyWithImpl<$Res>
    extends _$QueuesStateCopyWithImpl<$Res, _$_DataLoaded>
    implements _$$_DataLoadedCopyWith<$Res> {
  __$$_DataLoadedCopyWithImpl(
      _$_DataLoaded _value, $Res Function(_$_DataLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$_DataLoaded(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<QueueInfo>,
    ));
  }
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded(final List<QueueInfo> tasks) : _tasks = tasks;

  final List<QueueInfo> _tasks;
  @override
  List<QueueInfo> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'QueuesState.dataLoaded(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoaded &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      __$$_DataLoadedCopyWithImpl<_$_DataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<QueueInfo> tasks) dataLoaded,
  }) {
    return dataLoaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<QueueInfo> tasks)? dataLoaded,
  }) {
    return dataLoaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<QueueInfo> tasks)? dataLoaded,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoaded value) dataLoaded,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoaded value)? dataLoaded,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoaded value)? dataLoaded,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements QueuesState {
  const factory _DataLoaded(final List<QueueInfo> tasks) = _$_DataLoaded;

  List<QueueInfo> get tasks;
  @JsonKey(ignore: true)
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
