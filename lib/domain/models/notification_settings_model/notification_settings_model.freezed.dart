// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationSettingsModel _$NotificationSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettingsModel {
  bool get completed => throw _privateConstructorUsedError;
  bool get skipped => throw _privateConstructorUsedError;
  bool get joinedQueue => throw _privateConstructorUsedError;
  bool get freeze => throw _privateConstructorUsedError;
  bool get leftQueue => throw _privateConstructorUsedError;
  bool get yourTurn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationSettingsModelCopyWith<NotificationSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsModelCopyWith<$Res> {
  factory $NotificationSettingsModelCopyWith(NotificationSettingsModel value,
          $Res Function(NotificationSettingsModel) then) =
      _$NotificationSettingsModelCopyWithImpl<$Res, NotificationSettingsModel>;
  @useResult
  $Res call(
      {bool completed,
      bool skipped,
      bool joinedQueue,
      bool freeze,
      bool leftQueue,
      bool yourTurn});
}

/// @nodoc
class _$NotificationSettingsModelCopyWithImpl<$Res,
        $Val extends NotificationSettingsModel>
    implements $NotificationSettingsModelCopyWith<$Res> {
  _$NotificationSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = null,
    Object? skipped = null,
    Object? joinedQueue = null,
    Object? freeze = null,
    Object? leftQueue = null,
    Object? yourTurn = null,
  }) {
    return _then(_value.copyWith(
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      skipped: null == skipped
          ? _value.skipped
          : skipped // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedQueue: null == joinedQueue
          ? _value.joinedQueue
          : joinedQueue // ignore: cast_nullable_to_non_nullable
              as bool,
      freeze: null == freeze
          ? _value.freeze
          : freeze // ignore: cast_nullable_to_non_nullable
              as bool,
      leftQueue: null == leftQueue
          ? _value.leftQueue
          : leftQueue // ignore: cast_nullable_to_non_nullable
              as bool,
      yourTurn: null == yourTurn
          ? _value.yourTurn
          : yourTurn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationSettingsModelCopyWith<$Res>
    implements $NotificationSettingsModelCopyWith<$Res> {
  factory _$$_NotificationSettingsModelCopyWith(
          _$_NotificationSettingsModel value,
          $Res Function(_$_NotificationSettingsModel) then) =
      __$$_NotificationSettingsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool completed,
      bool skipped,
      bool joinedQueue,
      bool freeze,
      bool leftQueue,
      bool yourTurn});
}

/// @nodoc
class __$$_NotificationSettingsModelCopyWithImpl<$Res>
    extends _$NotificationSettingsModelCopyWithImpl<$Res,
        _$_NotificationSettingsModel>
    implements _$$_NotificationSettingsModelCopyWith<$Res> {
  __$$_NotificationSettingsModelCopyWithImpl(
      _$_NotificationSettingsModel _value,
      $Res Function(_$_NotificationSettingsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = null,
    Object? skipped = null,
    Object? joinedQueue = null,
    Object? freeze = null,
    Object? leftQueue = null,
    Object? yourTurn = null,
  }) {
    return _then(_$_NotificationSettingsModel(
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      skipped: null == skipped
          ? _value.skipped
          : skipped // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedQueue: null == joinedQueue
          ? _value.joinedQueue
          : joinedQueue // ignore: cast_nullable_to_non_nullable
              as bool,
      freeze: null == freeze
          ? _value.freeze
          : freeze // ignore: cast_nullable_to_non_nullable
              as bool,
      leftQueue: null == leftQueue
          ? _value.leftQueue
          : leftQueue // ignore: cast_nullable_to_non_nullable
              as bool,
      yourTurn: null == yourTurn
          ? _value.yourTurn
          : yourTurn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationSettingsModel implements _NotificationSettingsModel {
  const _$_NotificationSettingsModel(
      {required this.completed,
      required this.skipped,
      required this.joinedQueue,
      required this.freeze,
      required this.leftQueue,
      required this.yourTurn});

  factory _$_NotificationSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationSettingsModelFromJson(json);

  @override
  final bool completed;
  @override
  final bool skipped;
  @override
  final bool joinedQueue;
  @override
  final bool freeze;
  @override
  final bool leftQueue;
  @override
  final bool yourTurn;

  @override
  String toString() {
    return 'NotificationSettingsModel(completed: $completed, skipped: $skipped, joinedQueue: $joinedQueue, freeze: $freeze, leftQueue: $leftQueue, yourTurn: $yourTurn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationSettingsModel &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.skipped, skipped) || other.skipped == skipped) &&
            (identical(other.joinedQueue, joinedQueue) ||
                other.joinedQueue == joinedQueue) &&
            (identical(other.freeze, freeze) || other.freeze == freeze) &&
            (identical(other.leftQueue, leftQueue) ||
                other.leftQueue == leftQueue) &&
            (identical(other.yourTurn, yourTurn) ||
                other.yourTurn == yourTurn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, completed, skipped, joinedQueue,
      freeze, leftQueue, yourTurn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationSettingsModelCopyWith<_$_NotificationSettingsModel>
      get copyWith => __$$_NotificationSettingsModelCopyWithImpl<
          _$_NotificationSettingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationSettingsModelToJson(
      this,
    );
  }
}

abstract class _NotificationSettingsModel implements NotificationSettingsModel {
  const factory _NotificationSettingsModel(
      {required final bool completed,
      required final bool skipped,
      required final bool joinedQueue,
      required final bool freeze,
      required final bool leftQueue,
      required final bool yourTurn}) = _$_NotificationSettingsModel;

  factory _NotificationSettingsModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationSettingsModel.fromJson;

  @override
  bool get completed;
  @override
  bool get skipped;
  @override
  bool get joinedQueue;
  @override
  bool get freeze;
  @override
  bool get leftQueue;
  @override
  bool get yourTurn;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationSettingsModelCopyWith<_$_NotificationSettingsModel>
      get copyWith => throw _privateConstructorUsedError;
}
