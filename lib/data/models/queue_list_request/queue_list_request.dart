import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'queue_list_request.freezed.dart';
part 'queue_list_request.g.dart';

@freezed
class QueueListRequest with _$QueueListRequest {
  const factory QueueListRequest({
    SortEnum? sort,
  }) = _QueueListRequest;

  factory QueueListRequest.fromJson(Map<String, dynamic> json) =>
      _$QueueListRequestFromJson(json);
}
