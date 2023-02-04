// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationListResponse _$NotificationListResponseFromJson(
    Map<String, dynamic> json) {
  return _NotificationListResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationListResponse {
  List<NotificationModel> get content => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationListResponseCopyWith<NotificationListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListResponseCopyWith<$Res> {
  factory $NotificationListResponseCopyWith(NotificationListResponse value,
          $Res Function(NotificationListResponse) then) =
      _$NotificationListResponseCopyWithImpl<$Res, NotificationListResponse>;
  @useResult
  $Res call({List<NotificationModel> content, bool last});
}

/// @nodoc
class _$NotificationListResponseCopyWithImpl<$Res,
        $Val extends NotificationListResponse>
    implements $NotificationListResponseCopyWith<$Res> {
  _$NotificationListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? last = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationListResponseCopyWith<$Res>
    implements $NotificationListResponseCopyWith<$Res> {
  factory _$$_NotificationListResponseCopyWith(
          _$_NotificationListResponse value,
          $Res Function(_$_NotificationListResponse) then) =
      __$$_NotificationListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationModel> content, bool last});
}

/// @nodoc
class __$$_NotificationListResponseCopyWithImpl<$Res>
    extends _$NotificationListResponseCopyWithImpl<$Res,
        _$_NotificationListResponse>
    implements _$$_NotificationListResponseCopyWith<$Res> {
  __$$_NotificationListResponseCopyWithImpl(_$_NotificationListResponse _value,
      $Res Function(_$_NotificationListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? last = null,
  }) {
    return _then(_$_NotificationListResponse(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationListResponse implements _NotificationListResponse {
  const _$_NotificationListResponse(
      {required final List<NotificationModel> content, required this.last})
      : _content = content;

  factory _$_NotificationListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationListResponseFromJson(json);

  final List<NotificationModel> _content;
  @override
  List<NotificationModel> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final bool last;

  @override
  String toString() {
    return 'NotificationListResponse(content: $content, last: $last)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationListResponse &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_content), last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationListResponseCopyWith<_$_NotificationListResponse>
      get copyWith => __$$_NotificationListResponseCopyWithImpl<
          _$_NotificationListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationListResponseToJson(
      this,
    );
  }
}

abstract class _NotificationListResponse implements NotificationListResponse {
  const factory _NotificationListResponse(
      {required final List<NotificationModel> content,
      required final bool last}) = _$_NotificationListResponse;

  factory _NotificationListResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationListResponse.fromJson;

  @override
  List<NotificationModel> get content;
  @override
  bool get last;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationListResponseCopyWith<_$_NotificationListResponse>
      get copyWith => throw _privateConstructorUsedError;
}
