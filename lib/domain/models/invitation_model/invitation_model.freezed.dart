// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvitationModel _$InvitationModelFromJson(Map<String, dynamic> json) {
  return _InvitationModel.fromJson(json);
}

/// @nodoc
mixin _$InvitationModel {
  String get pinCode => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationModelCopyWith<InvitationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationModelCopyWith<$Res> {
  factory $InvitationModelCopyWith(
          InvitationModel value, $Res Function(InvitationModel) then) =
      _$InvitationModelCopyWithImpl<$Res, InvitationModel>;
  @useResult
  $Res call({String pinCode, String qrCode});
}

/// @nodoc
class _$InvitationModelCopyWithImpl<$Res, $Val extends InvitationModel>
    implements $InvitationModelCopyWith<$Res> {
  _$InvitationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
    Object? qrCode = null,
  }) {
    return _then(_value.copyWith(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvitationModelCopyWith<$Res>
    implements $InvitationModelCopyWith<$Res> {
  factory _$$_InvitationModelCopyWith(
          _$_InvitationModel value, $Res Function(_$_InvitationModel) then) =
      __$$_InvitationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pinCode, String qrCode});
}

/// @nodoc
class __$$_InvitationModelCopyWithImpl<$Res>
    extends _$InvitationModelCopyWithImpl<$Res, _$_InvitationModel>
    implements _$$_InvitationModelCopyWith<$Res> {
  __$$_InvitationModelCopyWithImpl(
      _$_InvitationModel _value, $Res Function(_$_InvitationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
    Object? qrCode = null,
  }) {
    return _then(_$_InvitationModel(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvitationModel implements _InvitationModel {
  const _$_InvitationModel({required this.pinCode, required this.qrCode});

  factory _$_InvitationModel.fromJson(Map<String, dynamic> json) =>
      _$$_InvitationModelFromJson(json);

  @override
  final String pinCode;
  @override
  final String qrCode;

  @override
  String toString() {
    return 'InvitationModel(pinCode: $pinCode, qrCode: $qrCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvitationModel &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pinCode, qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvitationModelCopyWith<_$_InvitationModel> get copyWith =>
      __$$_InvitationModelCopyWithImpl<_$_InvitationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvitationModelToJson(
      this,
    );
  }
}

abstract class _InvitationModel implements InvitationModel {
  const factory _InvitationModel(
      {required final String pinCode,
      required final String qrCode}) = _$_InvitationModel;

  factory _InvitationModel.fromJson(Map<String, dynamic> json) =
      _$_InvitationModel.fromJson;

  @override
  String get pinCode;
  @override
  String get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$_InvitationModelCopyWith<_$_InvitationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
