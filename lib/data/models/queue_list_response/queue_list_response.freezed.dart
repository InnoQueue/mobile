// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueueListResponse _$QueueListResponseFromJson(Map<String, dynamic> json) {
  return _QueueListResponse.fromJson(json);
}

/// @nodoc
mixin _$QueueListResponse {
  List<QueueInfo> get queues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueListResponseCopyWith<QueueListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueListResponseCopyWith<$Res> {
  factory $QueueListResponseCopyWith(
          QueueListResponse value, $Res Function(QueueListResponse) then) =
      _$QueueListResponseCopyWithImpl<$Res, QueueListResponse>;
  @useResult
  $Res call({List<QueueInfo> queues});
}

/// @nodoc
class _$QueueListResponseCopyWithImpl<$Res, $Val extends QueueListResponse>
    implements $QueueListResponseCopyWith<$Res> {
  _$QueueListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queues = null,
  }) {
    return _then(_value.copyWith(
      queues: null == queues
          ? _value.queues
          : queues // ignore: cast_nullable_to_non_nullable
              as List<QueueInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueueListResponseCopyWith<$Res>
    implements $QueueListResponseCopyWith<$Res> {
  factory _$$_QueueListResponseCopyWith(_$_QueueListResponse value,
          $Res Function(_$_QueueListResponse) then) =
      __$$_QueueListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QueueInfo> queues});
}

/// @nodoc
class __$$_QueueListResponseCopyWithImpl<$Res>
    extends _$QueueListResponseCopyWithImpl<$Res, _$_QueueListResponse>
    implements _$$_QueueListResponseCopyWith<$Res> {
  __$$_QueueListResponseCopyWithImpl(
      _$_QueueListResponse _value, $Res Function(_$_QueueListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queues = null,
  }) {
    return _then(_$_QueueListResponse(
      queues: null == queues
          ? _value._queues
          : queues // ignore: cast_nullable_to_non_nullable
              as List<QueueInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueueListResponse implements _QueueListResponse {
  const _$_QueueListResponse({required final List<QueueInfo> queues})
      : _queues = queues;

  factory _$_QueueListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QueueListResponseFromJson(json);

  final List<QueueInfo> _queues;
  @override
  List<QueueInfo> get queues {
    if (_queues is EqualUnmodifiableListView) return _queues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queues);
  }

  @override
  String toString() {
    return 'QueueListResponse(queues: $queues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueueListResponse &&
            const DeepCollectionEquality().equals(other._queues, _queues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_queues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueueListResponseCopyWith<_$_QueueListResponse> get copyWith =>
      __$$_QueueListResponseCopyWithImpl<_$_QueueListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueueListResponseToJson(
      this,
    );
  }
}

abstract class _QueueListResponse implements QueueListResponse {
  const factory _QueueListResponse({required final List<QueueInfo> queues}) =
      _$_QueueListResponse;

  factory _QueueListResponse.fromJson(Map<String, dynamic> json) =
      _$_QueueListResponse.fromJson;

  @override
  List<QueueInfo> get queues;
  @override
  @JsonKey(ignore: true)
  _$$_QueueListResponseCopyWith<_$_QueueListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
