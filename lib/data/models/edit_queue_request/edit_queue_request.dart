import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_queue_request.freezed.dart';
part 'edit_queue_request.g.dart';

@freezed
class EditQueueRequest with _$EditQueueRequest {
  const factory EditQueueRequest({
    String? queueName,
    String? queueColor,
    bool? trackExpenses,
    List<int>? participants,
  }) = _EditQueueRequest;

  factory EditQueueRequest.fromJson(Map<String, dynamic> json) =>
      _$EditQueueRequestFromJson(json);
}
