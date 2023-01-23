// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_queue_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateQueueRequest _$CreateQueueRequestFromJson(Map<String, dynamic> json) {
  return _CreateQueueRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateQueueRequest {
  String get queueName => throw _privateConstructorUsedError;
  String get queueColor => throw _privateConstructorUsedError;
  bool get trackExpenses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateQueueRequestCopyWith<CreateQueueRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQueueRequestCopyWith<$Res> {
  factory $CreateQueueRequestCopyWith(
          CreateQueueRequest value, $Res Function(CreateQueueRequest) then) =
      _$CreateQueueRequestCopyWithImpl<$Res, CreateQueueRequest>;
  @useResult
  $Res call({String queueName, String queueColor, bool trackExpenses});
}

/// @nodoc
class _$CreateQueueRequestCopyWithImpl<$Res, $Val extends CreateQueueRequest>
    implements $CreateQueueRequestCopyWith<$Res> {
  _$CreateQueueRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueName = null,
    Object? queueColor = null,
    Object? trackExpenses = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateQueueRequestCopyWith<$Res>
    implements $CreateQueueRequestCopyWith<$Res> {
  factory _$$_CreateQueueRequestCopyWith(_$_CreateQueueRequest value,
          $Res Function(_$_CreateQueueRequest) then) =
      __$$_CreateQueueRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String queueName, String queueColor, bool trackExpenses});
}

/// @nodoc
class __$$_CreateQueueRequestCopyWithImpl<$Res>
    extends _$CreateQueueRequestCopyWithImpl<$Res, _$_CreateQueueRequest>
    implements _$$_CreateQueueRequestCopyWith<$Res> {
  __$$_CreateQueueRequestCopyWithImpl(
      _$_CreateQueueRequest _value, $Res Function(_$_CreateQueueRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queueName = null,
    Object? queueColor = null,
    Object? trackExpenses = null,
  }) {
    return _then(_$_CreateQueueRequest(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateQueueRequest implements _CreateQueueRequest {
  const _$_CreateQueueRequest(
      {required this.queueName,
      required this.queueColor,
      required this.trackExpenses});

  factory _$_CreateQueueRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateQueueRequestFromJson(json);

  @override
  final String queueName;
  @override
  final String queueColor;
  @override
  final bool trackExpenses;

  @override
  String toString() {
    return 'CreateQueueRequest(queueName: $queueName, queueColor: $queueColor, trackExpenses: $trackExpenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateQueueRequest &&
            (identical(other.queueName, queueName) ||
                other.queueName == queueName) &&
            (identical(other.queueColor, queueColor) ||
                other.queueColor == queueColor) &&
            (identical(other.trackExpenses, trackExpenses) ||
                other.trackExpenses == trackExpenses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, queueName, queueColor, trackExpenses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateQueueRequestCopyWith<_$_CreateQueueRequest> get copyWith =>
      __$$_CreateQueueRequestCopyWithImpl<_$_CreateQueueRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateQueueRequestToJson(
      this,
    );
  }
}

abstract class _CreateQueueRequest implements CreateQueueRequest {
  const factory _CreateQueueRequest(
      {required final String queueName,
      required final String queueColor,
      required final bool trackExpenses}) = _$_CreateQueueRequest;

  factory _CreateQueueRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateQueueRequest.fromJson;

  @override
  String get queueName;
  @override
  String get queueColor;
  @override
  bool get trackExpenses;
  @override
  @JsonKey(ignore: true)
  _$$_CreateQueueRequestCopyWith<_$_CreateQueueRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
