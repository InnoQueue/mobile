import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'sort')
enum SortEnum {
  @JsonValue("queue")
  byQueueName,
  @JsonValue("participant")
  byParticipantName,
  @JsonValue("date")
  byDateJoined,
  @JsonValue("todo")
  byDueDate;

  static SortEnum? getFromName(String? name) {
    if (name == null) return null;
    int idx = SortEnum.values.map((e) => e.name).toList().indexOf(name);
    if (idx == -1) return null;
    return SortEnum.values[idx];
  }

  String get presentationName {
    var result = name.replaceAll(RegExp(r'(?<!^)(?=[A-Z])'), r" ");
    var finalResult =
        result[0].toUpperCase() + result.substring(1).toLowerCase();
    return finalResult;
  }
}
