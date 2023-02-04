// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueueListRequest _$QueueListRequestFromJson(Map<String, dynamic> json) {
  return _QueueListRequest.fromJson(json);
}

/// @nodoc
mixin _$QueueListRequest {
  SortEnum? get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueListRequestCopyWith<QueueListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueListRequestCopyWith<$Res> {
  factory $QueueListRequestCopyWith(
          QueueListRequest value, $Res Function(QueueListRequest) then) =
      _$QueueListRequestCopyWithImpl<$Res, QueueListRequest>;
  @useResult
  $Res call({SortEnum? sort});
}

/// @nodoc
class _$QueueListRequestCopyWithImpl<$Res, $Val extends QueueListRequest>
    implements $QueueListRequestCopyWith<$Res> {
  _$QueueListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueueListRequestCopyWith<$Res>
    implements $QueueListRequestCopyWith<$Res> {
  factory _$$_QueueListRequestCopyWith(
          _$_QueueListRequest value, $Res Function(_$_QueueListRequest) then) =
      __$$_QueueListRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SortEnum? sort});
}

/// @nodoc
class __$$_QueueListRequestCopyWithImpl<$Res>
    extends _$QueueListRequestCopyWithImpl<$Res, _$_QueueListRequest>
    implements _$$_QueueListRequestCopyWith<$Res> {
  __$$_QueueListRequestCopyWithImpl(
      _$_QueueListRequest _value, $Res Function(_$_QueueListRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = freezed,
  }) {
    return _then(_$_QueueListRequest(
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueueListRequest implements _QueueListRequest {
  const _$_QueueListRequest({this.sort});

  factory _$_QueueListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_QueueListRequestFromJson(json);

  @override
  final SortEnum? sort;

  @override
  String toString() {
    return 'QueueListRequest(sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueueListRequest &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueueListRequestCopyWith<_$_QueueListRequest> get copyWith =>
      __$$_QueueListRequestCopyWithImpl<_$_QueueListRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueueListRequestToJson(
      this,
    );
  }
}

abstract class _QueueListRequest implements QueueListRequest {
  const factory _QueueListRequest({final SortEnum? sort}) = _$_QueueListRequest;

  factory _QueueListRequest.fromJson(Map<String, dynamic> json) =
      _$_QueueListRequest.fromJson;

  @override
  SortEnum? get sort;
  @override
  @JsonKey(ignore: true)
  _$$_QueueListRequestCopyWith<_$_QueueListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
