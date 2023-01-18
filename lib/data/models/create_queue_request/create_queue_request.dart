import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_queue_request.freezed.dart';
part 'create_queue_request.g.dart';

@freezed
class CreateQueueRequest with _$CreateQueueRequest {
  const factory CreateQueueRequest({
    required String queueName,
    required String queueColor,
    required bool trackExpenses,
  }) = _CreateQueueRequest;

  factory CreateQueueRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateQueueRequestFromJson(json);
}
