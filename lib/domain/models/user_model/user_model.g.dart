// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['userId'] as int,
      token: json['token'] as String,
      fcmToken: json['fcmToken'] as String,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
      'fcmToken': instance.fcmToken,
      'userName': instance.userName,
    };
