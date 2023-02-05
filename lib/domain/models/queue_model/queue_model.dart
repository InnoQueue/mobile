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
    required List<ParticipantModel> participants,
    required bool trackExpenses,
    required bool admin,
  }) = _QueueModel;

  factory QueueModel.fromJson(Map<String, dynamic> json) =>
      _$QueueModelFromJson(json);
}
