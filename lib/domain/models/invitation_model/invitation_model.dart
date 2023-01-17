import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation_model.freezed.dart';
part 'invitation_model.g.dart';

@freezed
class InvitationModel with _$InvitationModel {
  const factory InvitationModel({
    required String pinCode,
    required String qrCode,
  }) = _InvitationModel;

  factory InvitationModel.fromJson(Map<String, dynamic> json) =>
      _$InvitationModelFromJson(json);
}
