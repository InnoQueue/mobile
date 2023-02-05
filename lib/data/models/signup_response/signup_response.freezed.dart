// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) {
  return _SignupResponse.fromJson(json);
}

/// @nodoc
mixin _$SignupResponse {
  String get token => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupResponseCopyWith<SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupResponseCopyWith<$Res> {
  factory $SignupResponseCopyWith(
          SignupResponse value, $Res Function(SignupResponse) then) =
      _$SignupResponseCopyWithImpl<$Res, SignupResponse>;
  @useResult
  $Res call({String token, int userId});
}

/// @nodoc
class _$SignupResponseCopyWithImpl<$Res, $Val extends SignupResponse>
    implements $SignupResponseCopyWith<$Res> {
  _$SignupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupResponseCopyWith<$Res>
    implements $SignupResponseCopyWith<$Res> {
  factory _$$_SignupResponseCopyWith(
          _$_SignupResponse value, $Res Function(_$_SignupResponse) then) =
      __$$_SignupResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, int userId});
}

/// @nodoc
class __$$_SignupResponseCopyWithImpl<$Res>
    extends _$SignupResponseCopyWithImpl<$Res, _$_SignupResponse>
    implements _$$_SignupResponseCopyWith<$Res> {
  __$$_SignupResponseCopyWithImpl(
      _$_SignupResponse _value, $Res Function(_$_SignupResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = null,
  }) {
    return _then(_$_SignupResponse(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignupResponse implements _SignupResponse {
  const _$_SignupResponse({required this.token, required this.userId});

  factory _$_SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SignupResponseFromJson(json);

  @override
  final String token;
  @override
  final int userId;

  @override
  String toString() {
    return 'SignupResponse(token: $token, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupResponseCopyWith<_$_SignupResponse> get copyWith =>
      __$$_SignupResponseCopyWithImpl<_$_SignupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupResponseToJson(
      this,
    );
  }
}

abstract class _SignupResponse implements SignupResponse {
  const factory _SignupResponse(
      {required final String token,
      required final int userId}) = _$_SignupResponse;

  factory _SignupResponse.fromJson(Map<String, dynamic> json) =
      _$_SignupResponse.fromJson;

  @override
  String get token;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_SignupResponseCopyWith<_$_SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
