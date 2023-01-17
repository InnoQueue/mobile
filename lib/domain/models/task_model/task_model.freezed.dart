// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  int get queueId => throw _privateConstructorUsedError;
  String get queueName => throw _privateConstructorUsedError;
  String get queueColor => throw _privateConstructorUsedError;
  bool get trackExpenses => throw _privateConstructorUsedError;
  bool get important => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {int queueId,
      String queueName,
      String queueColor,
      bool trackExpenses,
      bool important});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueId = null,
    Object? queueName = null,
    Object? queueColor = null,
    Object? trackExpenses = null,
    Object? important = null,
  }) {
    return _then(_value.copyWith(
      queueId: null == queueId
          ? _value.queueId
          : queueId // ignore: cast_nullable_to_non_nullable
              as int,
      queueName: null == queueName
          ? _value.queueName
          : queueName // ignore: cast_nullable_to_non_nullable
              as String,
      queueColor: null == queueColor
          ? _value.queueColor
          : queueColor // ignore: cast_nullable_to_non_nullable
              as String,
      trackExpenses: null == trackExpenses
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool,
      important: null == important
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int queueId,
      String queueName,
      String queueColor,
      bool trackExpenses,
      bool important});
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$_TaskModel>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueId = null,
    Object? queueName = null,
    Object? queueColor = null,
    Object? trackExpenses = null,
    Object? important = null,
  }) {
    return _then(_$_TaskModel(
      queueId: null == queueId
          ? _value.queueId
          : queueId // ignore: cast_nullable_to_non_nullable
              as int,
      queueName: null == queueName
          ? _value.queueName
          : queueName // ignore: cast_nullable_to_non_nullable
              as String,
      queueColor: null == queueColor
          ? _value.queueColor
          : queueColor // ignore: cast_nullable_to_non_nullable
              as String,
      trackExpenses: null == trackExpenses
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool,
      important: null == important
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {required this.queueId,
      required this.queueName,
      required this.queueColor,
      required this.trackExpenses,
      required this.important});

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  final int queueId;
  @override
  final String queueName;
  @override
  final String queueColor;
  @override
  final bool trackExpenses;
  @override
  final bool important;

  @override
  String toString() {
    return 'TaskModel(queueId: $queueId, queueName: $queueName, queueColor: $queueColor, trackExpenses: $trackExpenses, important: $important)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            (identical(other.queueId, queueId) || other.queueId == queueId) &&
            (identical(other.queueName, queueName) ||
                other.queueName == queueName) &&
            (identical(other.queueColor, queueColor) ||
                other.queueColor == queueColor) &&
            (identical(other.trackExpenses, trackExpenses) ||
                other.trackExpenses == trackExpenses) &&
            (identical(other.important, important) ||
                other.important == important));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, queueId, queueName, queueColor, trackExpenses, important);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
      {required final int queueId,
      required final String queueName,
      required final String queueColor,
      required final bool trackExpenses,
      required final bool important}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  int get queueId;
  @override
  String get queueName;
  @override
  String get queueColor;
  @override
  bool get trackExpenses;
  @override
  bool get important;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
