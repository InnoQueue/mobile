import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain.dart';

part 'queue_model.freezed.dart';
part 'queue_model.g.dart';

@freezed
class QueueModel with _$QueueModel {
  const factory QueueModel({
    required int queueId,
    required String queueName,
    required String queueColor,
    required UserModel currentUser,
    required List<UserModel> partisipants,
    required bool trackExpenses,
    required bool actvie,
    required bool admin,
    required bool yourTurn,
  }) = _QueueModel;

  factory QueueModel.fromJson(Map<String, dynamic> json) =>
      _$QueueModelFromJson(json);
}
