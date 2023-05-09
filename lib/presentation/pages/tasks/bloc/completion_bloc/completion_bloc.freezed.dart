// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompletionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task) completeTask,
    required TResult Function(TaskModel task) skipTask,
    required TResult Function(TaskModel task) uncompleteTask,
    required TResult Function() updateState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task)? completeTask,
    TResult? Function(TaskModel task)? skipTask,
    TResult? Function(TaskModel task)? uncompleteTask,
    TResult? Function()? updateState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task)? completeTask,
    TResult Function(TaskModel task)? skipTask,
    TResult Function(TaskModel task)? uncompleteTask,
    TResult Function()? updateState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_UncompleteTask value) uncompleteTask,
    required TResult Function(_UpdateState value) updateState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_SkipTask value)? skipTask,
    TResult? Function(_UncompleteTask value)? uncompleteTask,
    TResult? Function(_UpdateState value)? updateState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_UncompleteTask value)? uncompleteTask,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionEventCopyWith<$Res> {
  factory $CompletionEventCopyWith(
          CompletionEvent value, $Res Function(CompletionEvent) then) =
      _$CompletionEventCopyWithImpl<$Res, CompletionEvent>;
}

/// @nodoc
class _$CompletionEventCopyWithImpl<$Res, $Val extends CompletionEvent>
    implements $CompletionEventCopyWith<$Res> {
  _$CompletionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CompleteTaskCopyWith<$Res> {
  factory _$$_CompleteTaskCopyWith(
          _$_CompleteTask value, $Res Function(_$_CompleteTask) then) =
      __$$_CompleteTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$_CompleteTaskCopyWithImpl<$Res>
    extends _$CompletionEventCopyWithImpl<$Res, _$_CompleteTask>
    implements _$$_CompleteTaskCopyWith<$Res> {
  __$$_CompleteTaskCopyWithImpl(
      _$_CompleteTask _value, $Res Function(_$_CompleteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_CompleteTask(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_CompleteTask implements _CompleteTask {
  const _$_CompleteTask(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'CompletionEvent.completeTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompleteTaskCopyWith<_$_CompleteTask> get copyWith =>
      __$$_CompleteTaskCopyWithImpl<_$_CompleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task) completeTask,
    required TResult Function(TaskModel task) skipTask,
    required TResult Function(TaskModel task) uncompleteTask,
    required TResult Function() updateState,
  }) {
    return completeTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task)? completeTask,
    TResult? Function(TaskModel task)? skipTask,
    TResult? Function(TaskModel task)? uncompleteTask,
    TResult? Function()? updateState,
  }) {
    return completeTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task)? completeTask,
    TResult Function(TaskModel task)? skipTask,
    TResult Function(TaskModel task)? uncompleteTask,
    TResult Function()? updateState,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_UncompleteTask value) uncompleteTask,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_SkipTask value)? skipTask,
    TResult? Function(_UncompleteTask value)? uncompleteTask,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_UncompleteTask value)? uncompleteTask,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class _CompleteTask implements CompletionEvent {
  const factory _CompleteTask(final TaskModel task) = _$_CompleteTask;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_CompleteTaskCopyWith<_$_CompleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SkipTaskCopyWith<$Res> {
  factory _$$_SkipTaskCopyWith(
          _$_SkipTask value, $Res Function(_$_SkipTask) then) =
      __$$_SkipTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$_SkipTaskCopyWithImpl<$Res>
    extends _$CompletionEventCopyWithImpl<$Res, _$_SkipTask>
    implements _$$_SkipTaskCopyWith<$Res> {
  __$$_SkipTaskCopyWithImpl(
      _$_SkipTask _value, $Res Function(_$_SkipTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_SkipTask(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_SkipTask implements _SkipTask {
  const _$_SkipTask(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'CompletionEvent.skipTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SkipTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SkipTaskCopyWith<_$_SkipTask> get copyWith =>
      __$$_SkipTaskCopyWithImpl<_$_SkipTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task) completeTask,
    required TResult Function(TaskModel task) skipTask,
    required TResult Function(TaskModel task) uncompleteTask,
    required TResult Function() updateState,
  }) {
    return skipTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task)? completeTask,
    TResult? Function(TaskModel task)? skipTask,
    TResult? Function(TaskModel task)? uncompleteTask,
    TResult? Function()? updateState,
  }) {
    return skipTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task)? completeTask,
    TResult Function(TaskModel task)? skipTask,
    TResult Function(TaskModel task)? uncompleteTask,
    TResult Function()? updateState,
    required TResult orElse(),
  }) {
    if (skipTask != null) {
      return skipTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_UncompleteTask value) uncompleteTask,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return skipTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_SkipTask value)? skipTask,
    TResult? Function(_UncompleteTask value)? uncompleteTask,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return skipTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_UncompleteTask value)? uncompleteTask,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (skipTask != null) {
      return skipTask(this);
    }
    return orElse();
  }
}

abstract class _SkipTask implements CompletionEvent {
  const factory _SkipTask(final TaskModel task) = _$_SkipTask;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_SkipTaskCopyWith<_$_SkipTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UncompleteTaskCopyWith<$Res> {
  factory _$$_UncompleteTaskCopyWith(
          _$_UncompleteTask value, $Res Function(_$_UncompleteTask) then) =
      __$$_UncompleteTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$_UncompleteTaskCopyWithImpl<$Res>
    extends _$CompletionEventCopyWithImpl<$Res, _$_UncompleteTask>
    implements _$$_UncompleteTaskCopyWith<$Res> {
  __$$_UncompleteTaskCopyWithImpl(
      _$_UncompleteTask _value, $Res Function(_$_UncompleteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_UncompleteTask(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_UncompleteTask implements _UncompleteTask {
  const _$_UncompleteTask(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'CompletionEvent.uncompleteTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UncompleteTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UncompleteTaskCopyWith<_$_UncompleteTask> get copyWith =>
      __$$_UncompleteTaskCopyWithImpl<_$_UncompleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task) completeTask,
    required TResult Function(TaskModel task) skipTask,
    required TResult Function(TaskModel task) uncompleteTask,
    required TResult Function() updateState,
  }) {
    return uncompleteTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task)? completeTask,
    TResult? Function(TaskModel task)? skipTask,
    TResult? Function(TaskModel task)? uncompleteTask,
    TResult? Function()? updateState,
  }) {
    return uncompleteTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task)? completeTask,
    TResult Function(TaskModel task)? skipTask,
    TResult Function(TaskModel task)? uncompleteTask,
    TResult Function()? updateState,
    required TResult orElse(),
  }) {
    if (uncompleteTask != null) {
      return uncompleteTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_UncompleteTask value) uncompleteTask,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return uncompleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_SkipTask value)? skipTask,
    TResult? Function(_UncompleteTask value)? uncompleteTask,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return uncompleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_UncompleteTask value)? uncompleteTask,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (uncompleteTask != null) {
      return uncompleteTask(this);
    }
    return orElse();
  }
}

abstract class _UncompleteTask implements CompletionEvent {
  const factory _UncompleteTask(final TaskModel task) = _$_UncompleteTask;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_UncompleteTaskCopyWith<_$_UncompleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateStateCopyWith<$Res> {
  factory _$$_UpdateStateCopyWith(
          _$_UpdateState value, $Res Function(_$_UpdateState) then) =
      __$$_UpdateStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateStateCopyWithImpl<$Res>
    extends _$CompletionEventCopyWithImpl<$Res, _$_UpdateState>
    implements _$$_UpdateStateCopyWith<$Res> {
  __$$_UpdateStateCopyWithImpl(
      _$_UpdateState _value, $Res Function(_$_UpdateState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateState implements _UpdateState {
  const _$_UpdateState();

  @override
  String toString() {
    return 'CompletionEvent.updateState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task) completeTask,
    required TResult Function(TaskModel task) skipTask,
    required TResult Function(TaskModel task) uncompleteTask,
    required TResult Function() updateState,
  }) {
    return updateState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task)? completeTask,
    TResult? Function(TaskModel task)? skipTask,
    TResult? Function(TaskModel task)? uncompleteTask,
    TResult? Function()? updateState,
  }) {
    return updateState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task)? completeTask,
    TResult Function(TaskModel task)? skipTask,
    TResult Function(TaskModel task)? uncompleteTask,
    TResult Function()? updateState,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_SkipTask value) skipTask,
    required TResult Function(_UncompleteTask value) uncompleteTask,
    required TResult Function(_UpdateState value) updateState,
  }) {
    return updateState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_SkipTask value)? skipTask,
    TResult? Function(_UncompleteTask value)? uncompleteTask,
    TResult? Function(_UpdateState value)? updateState,
  }) {
    return updateState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_SkipTask value)? skipTask,
    TResult Function(_UncompleteTask value)? uncompleteTask,
    TResult Function(_UpdateState value)? updateState,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(this);
    }
    return orElse();
  }
}

abstract class _UpdateState implements CompletionEvent {
  const factory _UpdateState() = _$_UpdateState;
}

/// @nodoc
mixin _$CompletionState {
  List<TaskModel> get selectedTasks => throw _privateConstructorUsedError;
  List<TaskModel> get disappearingTasks => throw _privateConstructorUsedError;
  List<TaskModel> get deletedTasks => throw _privateConstructorUsedError;
  TaskModel? get skippedTask => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TaskModel> selectedTasks,
            List<TaskModel> disappearingTasks,
            List<TaskModel> deletedTasks,
            TaskModel? skippedTask)
        completionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<TaskModel> selectedTasks,
            List<TaskModel> disappearingTasks,
            List<TaskModel> deletedTasks,
            TaskModel? skippedTask)?
        completionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<TaskModel> selectedTasks,
            List<TaskModel> disappearingTasks,
            List<TaskModel> deletedTasks,
            TaskModel? skippedTask)?
        completionState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompletionState value) completionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompletionState value)? completionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompletionState value)? completionState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompletionStateCopyWith<CompletionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionStateCopyWith<$Res> {
  factory $CompletionStateCopyWith(
          CompletionState value, $Res Function(CompletionState) then) =
      _$CompletionStateCopyWithImpl<$Res, CompletionState>;
  @useResult
  $Res call(
      {List<TaskModel> selectedTasks,
      List<TaskModel> disappearingTasks,
      List<TaskModel> deletedTasks,
      TaskModel? skippedTask});

  $TaskModelCopyWith<$Res>? get skippedTask;
}

/// @nodoc
class _$CompletionStateCopyWithImpl<$Res, $Val extends CompletionState>
    implements $CompletionStateCopyWith<$Res> {
  _$CompletionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTasks = null,
    Object? disappearingTasks = null,
    Object? deletedTasks = null,
    Object? skippedTask = freezed,
  }) {
    return _then(_value.copyWith(
      selectedTasks: null == selectedTasks
          ? _value.selectedTasks
          : selectedTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      disappearingTasks: null == disappearingTasks
          ? _value.disappearingTasks
          : disappearingTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      deletedTasks: null == deletedTasks
          ? _value.deletedTasks
          : deletedTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      skippedTask: freezed == skippedTask
          ? _value.skippedTask
          : skippedTask // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res>? get skippedTask {
    if (_value.skippedTask == null) {
      return null;
    }

    return $TaskModelCopyWith<$Res>(_value.skippedTask!, (value) {
      return _then(_value.copyWith(skippedTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CompletionStateCopyWith<$Res>
    implements $CompletionStateCopyWith<$Res> {
  factory _$$_CompletionStateCopyWith(
          _$_CompletionState value, $Res Function(_$_CompletionState) then) =
      __$$_CompletionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TaskModel> selectedTasks,
      List<TaskModel> disappearingTasks,
      List<TaskModel> deletedTasks,
      TaskModel? skippedTask});

  @override
  $TaskModelCopyWith<$Res>? get skippedTask;
}

/// @nodoc
class __$$_CompletionStateCopyWithImpl<$Res>
    extends _$CompletionStateCopyWithImpl<$Res, _$_CompletionState>
    implements _$$_CompletionStateCopyWith<$Res> {
  __$$_CompletionStateCopyWithImpl(
      _$_CompletionState _value, $Res Function(_$_CompletionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTasks = null,
    Object? disappearingTasks = null,
    Object? deletedTasks = null,
    Object? skippedTask = freezed,
  }) {
    return _then(_$_CompletionState(
      selectedTasks: null == selectedTasks
          ? _value._selectedTasks
          : selectedTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      disappearingTasks: null == disappearingTasks
          ? _value._disappearingTasks
          : disappearingTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      deletedTasks: null == deletedTasks
          ? _value._deletedTasks
          : deletedTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      skippedTask: freezed == skippedTask
          ? _value.skippedTask
          : skippedTask // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
    ));
  }
}

/// @nodoc

class _$_CompletionState implements _CompletionState {
  const _$_CompletionState(
      {required final List<TaskModel> selectedTasks,
      required final List<TaskModel> disappearingTasks,
      required final List<TaskModel> deletedTasks,
      required this.skippedTask})
      : _selectedTasks = selectedTasks,
        _disappearingTasks = disappearingTasks,
        _deletedTasks = deletedTasks;

  final List<TaskModel> _selectedTasks;
  @override
  List<TaskModel> get selectedTasks {
    if (_selectedTasks is EqualUnmodifiableListView) return _selectedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTasks);
  }

  final List<TaskModel> _disappearingTasks;
  @override
  List<TaskModel> get disappearingTasks {
    if (_disappearingTasks is EqualUnmodifiableListView)
      return _disappearingTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disappearingTasks);
  }

  final List<TaskModel> _deletedTasks;
  @override
  List<TaskModel> get deletedTasks {
    if (_deletedTasks is EqualUnmodifiableListView) return _deletedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deletedTasks);
  }

  @override
  final TaskModel? skippedTask;

  @override
  String toString() {
    return 'CompletionState.completionState(selectedTasks: $selectedTasks, disappearingTasks: $disappearingTasks, deletedTasks: $deletedTasks, skippedTask: $skippedTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletionState &&
            const DeepCollectionEquality()
                .equals(other._selectedTasks, _selectedTasks) &&
            const DeepCollectionEquality()
                .equals(other._disappearingTasks, _disappearingTasks) &&
            const DeepCollectionEquality()
                .equals(other._deletedTasks, _deletedTasks) &&
            (identical(other.skippedTask, skippedTask) ||
                other.skippedTask == skippedTask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedTasks),
      const DeepCollectionEquality().hash(_disappearingTasks),
      const DeepCollectionEquality().hash(_deletedTasks),
      skippedTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompletionStateCopyWith<_$_CompletionState> get copyWith =>
      __$$_CompletionStateCopyWithImpl<_$_CompletionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TaskModel> selectedTasks,
            List<TaskModel> disappearingTasks,
            List<TaskModel> deletedTasks,
            TaskModel? skippedTask)
        completionState,
  }) {
    return completionState(
        selectedTasks, disappearingTasks, deletedTasks, skippedTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<TaskModel> selectedTasks,
            List<TaskModel> disappearingTasks,
            List<TaskModel> deletedTasks,
            TaskModel? skippedTask)?
        completionState,
  }) {
    return completionState?.call(
        selectedTasks, disappearingTasks, deletedTasks, skippedTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<TaskModel> selectedTasks,
            List<TaskModel> disappearingTasks,
            List<TaskModel> deletedTasks,
            TaskModel? skippedTask)?
        completionState,
    required TResult orElse(),
  }) {
    if (completionState != null) {
      return completionState(
          selectedTasks, disappearingTasks, deletedTasks, skippedTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompletionState value) completionState,
  }) {
    return completionState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompletionState value)? completionState,
  }) {
    return completionState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompletionState value)? completionState,
    required TResult orElse(),
  }) {
    if (completionState != null) {
      return completionState(this);
    }
    return orElse();
  }
}

abstract class _CompletionState implements CompletionState {
  const factory _CompletionState(
      {required final List<TaskModel> selectedTasks,
      required final List<TaskModel> disappearingTasks,
      required final List<TaskModel> deletedTasks,
      required final TaskModel? skippedTask}) = _$_CompletionState;

  @override
  List<TaskModel> get selectedTasks;
  @override
  List<TaskModel> get disappearingTasks;
  @override
  List<TaskModel> get deletedTasks;
  @override
  TaskModel? get skippedTask;
  @override
  @JsonKey(ignore: true)
  _$$_CompletionStateCopyWith<_$_CompletionState> get copyWith =>
      throw _privateConstructorUsedError;
}
