// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_queue_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditQueueRequest _$EditQueueRequestFromJson(Map<String, dynamic> json) {
  return _EditQueueRequest.fromJson(json);
}

/// @nodoc
mixin _$EditQueueRequest {
  String? get queueName => throw _privateConstructorUsedError;
  String? get queueColor => throw _privateConstructorUsedError;
  bool? get trackExpenses => throw _privateConstructorUsedError;
  List<int>? get participants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditQueueRequestCopyWith<EditQueueRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditQueueRequestCopyWith<$Res> {
  factory $EditQueueRequestCopyWith(
          EditQueueRequest value, $Res Function(EditQueueRequest) then) =
      _$EditQueueRequestCopyWithImpl<$Res, EditQueueRequest>;
  @useResult
  $Res call(
      {String? queueName,
      String? queueColor,
      bool? trackExpenses,
      List<int>? participants});
}

/// @nodoc
class _$EditQueueRequestCopyWithImpl<$Res, $Val extends EditQueueRequest>
    implements $EditQueueRequestCopyWith<$Res> {
  _$EditQueueRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueName = freezed,
    Object? queueColor = freezed,
    Object? trackExpenses = freezed,
    Object? participants = freezed,
  }) {
    return _then(_value.copyWith(
      queueName: freezed == queueName
          ? _value.queueName
          : queueName // ignore: cast_nullable_to_non_nullable
              as String?,
      queueColor: freezed == queueColor
          ? _value.queueColor
          : queueColor // ignore: cast_nullable_to_non_nullable
              as String?,
      trackExpenses: freezed == trackExpenses
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditQueueRequestCopyWith<$Res>
    implements $EditQueueRequestCopyWith<$Res> {
  factory _$$_EditQueueRequestCopyWith(
          _$_EditQueueRequest value, $Res Function(_$_EditQueueRequest) then) =
      __$$_EditQueueRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? queueName,
      String? queueColor,
      bool? trackExpenses,
      List<int>? participants});
}

/// @nodoc
class __$$_EditQueueRequestCopyWithImpl<$Res>
    extends _$EditQueueRequestCopyWithImpl<$Res, _$_EditQueueRequest>
    implements _$$_EditQueueRequestCopyWith<$Res> {
  __$$_EditQueueRequestCopyWithImpl(
      _$_EditQueueRequest _value, $Res Function(_$_EditQueueRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueName = freezed,
    Object? queueColor = freezed,
    Object? trackExpenses = freezed,
    Object? participants = freezed,
  }) {
    return _then(_$_EditQueueRequest(
      queueName: freezed == queueName
          ? _value.queueName
          : queueName // ignore: cast_nullable_to_non_nullable
              as String?,
      queueColor: freezed == queueColor
          ? _value.queueColor
          : queueColor // ignore: cast_nullable_to_non_nullable
              as String?,
      trackExpenses: freezed == trackExpenses
          ? _value.trackExpenses
          : trackExpenses // ignore: cast_nullable_to_non_nullable
              as bool?,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditQueueRequest implements _EditQueueRequest {
  const _$_EditQueueRequest(
      {this.queueName,
      this.queueColor,
      this.trackExpenses,
      final List<int>? participants})
      : _participants = participants;

  factory _$_EditQueueRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EditQueueRequestFromJson(json);

  @override
  final String? queueName;
  @override
  final String? queueColor;
  @override
  final bool? trackExpenses;
  final List<int>? _participants;
  @override
  List<int>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EditQueueRequest(queueName: $queueName, queueColor: $queueColor, trackExpenses: $trackExpenses, participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditQueueRequest &&
            (identical(other.queueName, queueName) ||
                other.queueName == queueName) &&
            (identical(other.queueColor, queueColor) ||
                other.queueColor == queueColor) &&
            (identical(other.trackExpenses, trackExpenses) ||
                other.trackExpenses == trackExpenses) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, queueName, queueColor,
      trackExpenses, const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditQueueRequestCopyWith<_$_EditQueueRequest> get copyWith =>
      __$$_EditQueueRequestCopyWithImpl<_$_EditQueueRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditQueueRequestToJson(
      this,
    );
  }
}

abstract class _EditQueueRequest implements EditQueueRequest {
  const factory _EditQueueRequest(
      {final String? queueName,
      final String? queueColor,
      final bool? trackExpenses,
      final List<int>? participants}) = _$_EditQueueRequest;

  factory _EditQueueRequest.fromJson(Map<String, dynamic> json) =
      _$_EditQueueRequest.fromJson;

  @override
  String? get queueName;
  @override
  String? get queueColor;
  @override
  bool? get trackExpenses;
  @override
  List<int>? get participants;
  @override
  @JsonKey(ignore: true)
  _$$_EditQueueRequestCopyWith<_$_EditQueueRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
