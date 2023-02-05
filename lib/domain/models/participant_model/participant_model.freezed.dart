// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParticipantModel _$ParticipantModelFromJson(Map<String, dynamic> json) {
  return _ParticipantModel.fromJson(json);
}

/// @nodoc
mixin _$ParticipantModel {
  int get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get expenses => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  bool get onDuty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantModelCopyWith<ParticipantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantModelCopyWith<$Res> {
  factory $ParticipantModelCopyWith(
          ParticipantModel value, $Res Function(ParticipantModel) then) =
      _$ParticipantModelCopyWithImpl<$Res, ParticipantModel>;
  @useResult
  $Res call(
      {int userId, String userName, int expenses, bool active, bool onDuty});
}

/// @nodoc
class _$ParticipantModelCopyWithImpl<$Res, $Val extends ParticipantModel>
    implements $ParticipantModelCopyWith<$Res> {
  _$ParticipantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? expenses = null,
    Object? active = null,
    Object? onDuty = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      onDuty: null == onDuty
          ? _value.onDuty
          : onDuty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticipantModelCopyWith<$Res>
    implements $ParticipantModelCopyWith<$Res> {
  factory _$$_ParticipantModelCopyWith(
          _$_ParticipantModel value, $Res Function(_$_ParticipantModel) then) =
      __$$_ParticipantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId, String userName, int expenses, bool active, bool onDuty});
}

/// @nodoc
class __$$_ParticipantModelCopyWithImpl<$Res>
    extends _$ParticipantModelCopyWithImpl<$Res, _$_ParticipantModel>
    implements _$$_ParticipantModelCopyWith<$Res> {
  __$$_ParticipantModelCopyWithImpl(
      _$_ParticipantModel _value, $Res Function(_$_ParticipantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? expenses = null,
    Object? active = null,
    Object? onDuty = null,
  }) {
    return _then(_$_ParticipantModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      onDuty: null == onDuty
          ? _value.onDuty
          : onDuty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParticipantModel implements _ParticipantModel {
  const _$_ParticipantModel(
      {required this.userId,
      required this.userName,
      required this.expenses,
      required this.active,
      required this.onDuty});

  factory _$_ParticipantModel.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantModelFromJson(json);

  @override
  final int userId;
  @override
  final String userName;
  @override
  final int expenses;
  @override
  final bool active;
  @override
  final bool onDuty;

  @override
  String toString() {
    return 'ParticipantModel(userId: $userId, userName: $userName, expenses: $expenses, active: $active, onDuty: $onDuty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipantModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.expenses, expenses) ||
                other.expenses == expenses) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.onDuty, onDuty) || other.onDuty == onDuty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userName, expenses, active, onDuty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipantModelCopyWith<_$_ParticipantModel> get copyWith =>
      __$$_ParticipantModelCopyWithImpl<_$_ParticipantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantModelToJson(
      this,
    );
  }
}

abstract class _ParticipantModel implements ParticipantModel {
  const factory _ParticipantModel(
      {required final int userId,
      required final String userName,
      required final int expenses,
      required final bool active,
      required final bool onDuty}) = _$_ParticipantModel;

  factory _ParticipantModel.fromJson(Map<String, dynamic> json) =
      _$_ParticipantModel.fromJson;

  @override
  int get userId;
  @override
  String get userName;
  @override
  int get expenses;
  @override
  bool get active;
  @override
  bool get onDuty;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantModelCopyWith<_$_ParticipantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
