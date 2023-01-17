// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskListResponse _$TaskListResponseFromJson(Map<String, dynamic> json) {
  return _TaskListResponse.fromJson(json);
}

/// @nodoc
mixin _$TaskListResponse {
  List<TaskModel> get toDoTasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskListResponseCopyWith<TaskListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListResponseCopyWith<$Res> {
  factory $TaskListResponseCopyWith(
          TaskListResponse value, $Res Function(TaskListResponse) then) =
      _$TaskListResponseCopyWithImpl<$Res, TaskListResponse>;
  @useResult
  $Res call({List<TaskModel> toDoTasks});
}

/// @nodoc
class _$TaskListResponseCopyWithImpl<$Res, $Val extends TaskListResponse>
    implements $TaskListResponseCopyWith<$Res> {
  _$TaskListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoTasks = null,
  }) {
    return _then(_value.copyWith(
      toDoTasks: null == toDoTasks
          ? _value.toDoTasks
          : toDoTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskListResponseCopyWith<$Res>
    implements $TaskListResponseCopyWith<$Res> {
  factory _$$_TaskListResponseCopyWith(
          _$_TaskListResponse value, $Res Function(_$_TaskListResponse) then) =
      __$$_TaskListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TaskModel> toDoTasks});
}

/// @nodoc
class __$$_TaskListResponseCopyWithImpl<$Res>
    extends _$TaskListResponseCopyWithImpl<$Res, _$_TaskListResponse>
    implements _$$_TaskListResponseCopyWith<$Res> {
  __$$_TaskListResponseCopyWithImpl(
      _$_TaskListResponse _value, $Res Function(_$_TaskListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoTasks = null,
  }) {
    return _then(_$_TaskListResponse(
      toDoTasks: null == toDoTasks
          ? _value._toDoTasks
          : toDoTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskListResponse implements _TaskListResponse {
  const _$_TaskListResponse({required final List<TaskModel> toDoTasks})
      : _toDoTasks = toDoTasks;

  factory _$_TaskListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TaskListResponseFromJson(json);

  final List<TaskModel> _toDoTasks;
  @override
  List<TaskModel> get toDoTasks {
    if (_toDoTasks is EqualUnmodifiableListView) return _toDoTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoTasks);
  }

  @override
  String toString() {
    return 'TaskListResponse(toDoTasks: $toDoTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskListResponse &&
            const DeepCollectionEquality()
                .equals(other._toDoTasks, _toDoTasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_toDoTasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskListResponseCopyWith<_$_TaskListResponse> get copyWith =>
      __$$_TaskListResponseCopyWithImpl<_$_TaskListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskListResponseToJson(
      this,
    );
  }
}

abstract class _TaskListResponse implements TaskListResponse {
  const factory _TaskListResponse({required final List<TaskModel> toDoTasks}) =
      _$_TaskListResponse;

  factory _TaskListResponse.fromJson(Map<String, dynamic> json) =
      _$_TaskListResponse.fromJson;

  @override
  List<TaskModel> get toDoTasks;
  @override
  @JsonKey(ignore: true)
  _$$_TaskListResponseCopyWith<_$_TaskListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
