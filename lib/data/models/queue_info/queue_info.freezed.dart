// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueueInfo _$QueueInfoFromJson(Map<String, dynamic> json) {
  return _QueueInfo.fromJson(json);
}

/// @nodoc
mixin _$QueueInfo {
  int get queueId => throw _privateConstructorUsedError;
  String? get queueName => throw _privateConstructorUsedError;
  String get queueColor => throw _privateConstructorUsedError;
  String get onDutyUserName => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueInfoCopyWith<QueueInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueInfoCopyWith<$Res> {
  factory $QueueInfoCopyWith(QueueInfo value, $Res Function(QueueInfo) then) =
      _$QueueInfoCopyWithImpl<$Res, QueueInfo>;
  @useResult
  $Res call(
      {int queueId,
      String? queueName,
      String queueColor,
      String onDutyUserName,
      bool active});
}

/// @nodoc
class _$QueueInfoCopyWithImpl<$Res, $Val extends QueueInfo>
    implements $QueueInfoCopyWith<$Res> {
  _$QueueInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueId = null,
    Object? queueName = freezed,
    Object? queueColor = null,
    Object? onDutyUserName = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      queueId: null == queueId
          ? _value.queueId
          : queueId // ignore: cast_nullable_to_non_nullable
              as int,
      queueName: freezed == queueName
          ? _value.queueName
          : queueName // ignore: cast_nullable_to_non_nullable
              as String?,
      queueColor: null == queueColor
          ? _value.queueColor
          : queueColor // ignore: cast_nullable_to_non_nullable
              as String,
      onDutyUserName: null == onDutyUserName
          ? _value.onDutyUserName
          : onDutyUserName // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueueInfoCopyWith<$Res> implements $QueueInfoCopyWith<$Res> {
  factory _$$_QueueInfoCopyWith(
          _$_QueueInfo value, $Res Function(_$_QueueInfo) then) =
      __$$_QueueInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int queueId,
      String? queueName,
      String queueColor,
      String onDutyUserName,
      bool active});
}

/// @nodoc
class __$$_QueueInfoCopyWithImpl<$Res>
    extends _$QueueInfoCopyWithImpl<$Res, _$_QueueInfo>
    implements _$$_QueueInfoCopyWith<$Res> {
  __$$_QueueInfoCopyWithImpl(
      _$_QueueInfo _value, $Res Function(_$_QueueInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueId = null,
    Object? queueName = freezed,
    Object? queueColor = null,
    Object? onDutyUserName = null,
    Object? active = null,
  }) {
    return _then(_$_QueueInfo(
      queueId: null == queueId
          ? _value.queueId
          : queueId // ignore: cast_nullable_to_non_nullable
              as int,
      queueName: freezed == queueName
          ? _value.queueName
          : queueName // ignore: cast_nullable_to_non_nullable
              as String?,
      queueColor: null == queueColor
          ? _value.queueColor
          : queueColor // ignore: cast_nullable_to_non_nullable
              as String,
      onDutyUserName: null == onDutyUserName
          ? _value.onDutyUserName
          : onDutyUserName // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueueInfo implements _QueueInfo {
  const _$_QueueInfo(
      {required this.queueId,
      required this.queueName,
      required this.queueColor,
      required this.onDutyUserName,
      required this.active});

  factory _$_QueueInfo.fromJson(Map<String, dynamic> json) =>
      _$$_QueueInfoFromJson(json);

  @override
  final int queueId;
  @override
  final String? queueName;
  @override
  final String queueColor;
  @override
  final String onDutyUserName;
  @override
  final bool active;

  @override
  String toString() {
    return 'QueueInfo(queueId: $queueId, queueName: $queueName, queueColor: $queueColor, onDutyUserName: $onDutyUserName, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueueInfo &&
            (identical(other.queueId, queueId) || other.queueId == queueId) &&
            (identical(other.queueName, queueName) ||
                other.queueName == queueName) &&
            (identical(other.queueColor, queueColor) ||
                other.queueColor == queueColor) &&
            (identical(other.onDutyUserName, onDutyUserName) ||
                other.onDutyUserName == onDutyUserName) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, queueId, queueName, queueColor, onDutyUserName, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueueInfoCopyWith<_$_QueueInfo> get copyWith =>
      __$$_QueueInfoCopyWithImpl<_$_QueueInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueueInfoToJson(
      this,
    );
  }
}

abstract class _QueueInfo implements QueueInfo {
  const factory _QueueInfo(
      {required final int queueId,
      required final String? queueName,
      required final String queueColor,
      required final String onDutyUserName,
      required final bool active}) = _$_QueueInfo;

  factory _QueueInfo.fromJson(Map<String, dynamic> json) =
      _$_QueueInfo.fromJson;

  @override
  int get queueId;
  @override
  String? get queueName;
  @override
  String get queueColor;
  @override
  String get onDutyUserName;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$_QueueInfoCopyWith<_$_QueueInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
