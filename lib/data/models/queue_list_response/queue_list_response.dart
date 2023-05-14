import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data.dart';

part 'queue_list_response.freezed.dart';
part 'queue_list_response.g.dart';

@freezed
class QueueListResponse with _$QueueListResponse {
  @JsonSerializable(explicitToJson: true)
  const factory QueueListResponse({
    required List<QueueInfo> queues,
  }) = _QueueListResponse;

  factory QueueListResponse.fromJson(Map<String, dynamic> json) =>
      _$QueueListResponseFromJson(json);
}
