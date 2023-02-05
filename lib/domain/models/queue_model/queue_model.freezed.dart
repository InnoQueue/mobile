// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueueModel _$QueueModelFromJson(Map<String, dynamic> json) {
  return _QueueModel.fromJson(json);
}

/// @nodoc
mixin _$QueueModel {
  int get queueId => throw _privateConstructorUsedError;
  String get queueName => throw _privateConstructorUsedError;
  String get queueColor => throw _privateConstructorUsedError;
  List<ParticipantModel> get participants => throw _privateConstructorUsedError;
  bool get trackExpenses => throw _privateConstructorUsedError;
  bool get admin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueModelCopyWith<QueueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueModelCopyWith<$Res> {
  factory $QueueModelCopyWith(
          QueueModel value, $Res Function(QueueModel) then) =
      _$QueueModelCopyWithImpl<$Res, QueueModel>;
  @useResult
  $Res call(
      {int queueId,
      String queueName,
      String queueColor,
      List<ParticipantModel> participants,
      bool trackExpenses,
      bool admin});
}

/// @nodoc
class _$QueueModelCopyWithImpl<$Res, $Val extends QueueModel>
    implements $QueueModelCopyWith<$Res> {
  _$QueueModelCopyWithImpl(this._value, this._then);

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
    Object? participants = null,
    Object? trackExpenses = null,
    Object? admin = null,
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
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantModel>,
      trackExpenses: null == trackExpenses
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueueModelCopyWith<$Res>
    implements $QueueModelCopyWith<$Res> {
  factory _$$_QueueModelCopyWith(
          _$_QueueModel value, $Res Function(_$_QueueModel) then) =
      __$$_QueueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int queueId,
      String queueName,
      String queueColor,
      List<ParticipantModel> participants,
      bool trackExpenses,
      bool admin});
}

/// @nodoc
class __$$_QueueModelCopyWithImpl<$Res>
    extends _$QueueModelCopyWithImpl<$Res, _$_QueueModel>
    implements _$$_QueueModelCopyWith<$Res> {
  __$$_QueueModelCopyWithImpl(
      _$_QueueModel _value, $Res Function(_$_QueueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueId = null,
    Object? queueName = null,
    Object? queueColor = null,
    Object? participants = null,
    Object? trackExpenses = null,
    Object? admin = null,
  }) {
    return _then(_$_QueueModel(
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
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantModel>,
      trackExpenses: null == trackExpenses
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueueModel implements _QueueModel {
  const _$_QueueModel(
      {required this.queueId,
      required this.queueName,
      required this.queueColor,
      required final List<ParticipantModel> participants,
      required this.trackExpenses,
      required this.admin})
      : _participants = participants;

  factory _$_QueueModel.fromJson(Map<String, dynamic> json) =>
      _$$_QueueModelFromJson(json);

  @override
  final int queueId;
  @override
  final String queueName;
  @override
  final String queueColor;
  final List<ParticipantModel> _participants;
  @override
  List<ParticipantModel> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final bool trackExpenses;
  @override
  final bool admin;

  @override
  String toString() {
    return 'QueueModel(queueId: $queueId, queueName: $queueName, queueColor: $queueColor, participants: $participants, trackExpenses: $trackExpenses, admin: $admin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueueModel &&
            (identical(other.queueId, queueId) || other.queueId == queueId) &&
            (identical(other.queueName, queueName) ||
                other.queueName == queueName) &&
            (identical(other.queueColor, queueColor) ||
                other.queueColor == queueColor) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.trackExpenses, trackExpenses) ||
                other.trackExpenses == trackExpenses) &&
            (identical(other.admin, admin) || other.admin == admin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, queueId, queueName, queueColor,
      const DeepCollectionEquality().hash(_participants), trackExpenses, admin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueueModelCopyWith<_$_QueueModel> get copyWith =>
      __$$_QueueModelCopyWithImpl<_$_QueueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueueModelToJson(
      this,
    );
  }
}

abstract class _QueueModel implements QueueModel {
  const factory _QueueModel(
      {required final int queueId,
      required final String queueName,
      required final String queueColor,
      required final List<ParticipantModel> participants,
      required final bool trackExpenses,
      required final bool admin}) = _$_QueueModel;

  factory _QueueModel.fromJson(Map<String, dynamic> json) =
      _$_QueueModel.fromJson;

  @override
  int get queueId;
  @override
  String get queueName;
  @override
  String get queueColor;
  @override
  List<ParticipantModel> get participants;
  @override
  bool get trackExpenses;
  @override
  bool get admin;
  @override
  @JsonKey(ignore: true)
  _$$_QueueModelCopyWith<_$_QueueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
