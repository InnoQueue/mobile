// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(participantName, queueName) =>
      "Сейчас очередь **${participantName}** в **${queueName}**";

  static String m1(participantName, queueName) =>
      "**${participantName}** завершил(-а, -и) **${queueName}**";

  static String m2(participantName, queueName) =>
      "**${participantName}** удалил(-а, -и) **${queueName}**";

  static String m3(participantName, queueName) =>
      "**${participantName}** заморозил(-а, -и) **${queueName}**";

  static String m4(participantName, queueName) =>
      "**${participantName}** присоединился(-ась, -ись) к **${queueName}**";

  static String m5(participantName, queueName) =>
      "**${participantName}** покинул(-а, -и) **${queueName}**";

  static String m6(participantName, queueName) =>
      "**${participantName}** пропустил(а, -и) **${queueName}**";

  static String m7(participantName, queueName) =>
      "**${participantName}** разморозил(-а, -и) **${queueName}**";

  static String m8(queueName) => "Вы завершили **${queueName}**";

  static String m9(queueName) => "Вы удалили **${queueName}**";

  static String m10(queueName) => "Вы заморозили **${queueName}**";

  static String m11(queueName) => "Вы просоединились к **${queueName}**";

  static String m12(queueName) => "Вы покинули **${queueName}**";

  static String m13(queueName) => "Вы пропустили **${queueName}**";

  static String m14(queueName) => "Вы разморозили **${queueName}**";

  static String m15(queueName) =>
      "Вас встряхнули, чтобы напомнить Вам, что сейчас Ваша очередь в **${queueName}**";

  static String m16(queueName) => "Сейчас Ваша очередь в **${queueName}**";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addProgress":
            MessageLookupByLibrary.simpleMessage("Добавить прогресс"),
        "applySorting": MessageLookupByLibrary.simpleMessage("Применить"),
        "byDateJoined":
            MessageLookupByLibrary.simpleMessage("По дате присоединения"),
        "byDueDate":
            MessageLookupByLibrary.simpleMessage("По сроку завершения"),
        "byParticipantName":
            MessageLookupByLibrary.simpleMessage("По имени учатсника"),
        "byQueueName":
            MessageLookupByLibrary.simpleMessage("По названию очереди"),
        "chooseColor": MessageLookupByLibrary.simpleMessage("Выберите цвет"),
        "create": MessageLookupByLibrary.simpleMessage("Создать"),
        "createQueue": MessageLookupByLibrary.simpleMessage("Создать Очередь"),
        "dark": MessageLookupByLibrary.simpleMessage("Темная"),
        "edit": MessageLookupByLibrary.simpleMessage("Редактировать"),
        "enterPinCode": MessageLookupByLibrary.simpleMessage("Введите пин-код"),
        "freeze": MessageLookupByLibrary.simpleMessage("Заморозить"),
        "inputName": MessageLookupByLibrary.simpleMessage("введите имя"),
        "language": MessageLookupByLibrary.simpleMessage("Язык"),
        "leave": MessageLookupByLibrary.simpleMessage("Покинуть"),
        "leaveFeedback": MessageLookupByLibrary.simpleMessage("Обратная связь"),
        "light": MessageLookupByLibrary.simpleMessage("Светлая"),
        "notificationSettings":
            MessageLookupByLibrary.simpleMessage("Настройки уведомлений"),
        "notifications": MessageLookupByLibrary.simpleMessage("Уведомления"),
        "onDuty": MessageLookupByLibrary.simpleMessage("Дежурный:"),
        "or": MessageLookupByLibrary.simpleMessage("или"),
        "otherParticipants":
            MessageLookupByLibrary.simpleMessage("Другие участники:"),
        "participants": MessageLookupByLibrary.simpleMessage("Участники:"),
        "queueFrozenNotification": MessageLookupByLibrary.simpleMessage(
            "Уведомлять, когда кто-то заморозил очередь"),
        "queueJoinedNotification": MessageLookupByLibrary.simpleMessage(
            "Уведомлять, когда кто-то присоединился к очереди"),
        "queueLeftNotification": MessageLookupByLibrary.simpleMessage(
            "Уведомлять, когда кто-то покинул очередь"),
        "queues": MessageLookupByLibrary.simpleMessage("Очереди"),
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "scanQrCode":
            MessageLookupByLibrary.simpleMessage("Отсканируйте QR-код"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "shake": MessageLookupByLibrary.simpleMessage("тряхнуть"),
        "share": MessageLookupByLibrary.simpleMessage("Поделиться"),
        "skip": MessageLookupByLibrary.simpleMessage("Пропустить"),
        "sort": MessageLookupByLibrary.simpleMessage("Сортировка"),
        "spent": MessageLookupByLibrary.simpleMessage("потрачено"),
        "submit": MessageLookupByLibrary.simpleMessage("Готово"),
        "system": MessageLookupByLibrary.simpleMessage("Системный"),
        "taskCompleteNotification": MessageLookupByLibrary.simpleMessage(
            "Уведомлять, когда кто-то завершил задание"),
        "taskSkippedNotification": MessageLookupByLibrary.simpleMessage(
            "Уведомлять, когда кто-то пропустил задание"),
        "tasks": MessageLookupByLibrary.simpleMessage("Задания"),
        "theirTurn": m0,
        "theme": MessageLookupByLibrary.simpleMessage("Тема"),
        "theyCompleted": m1,
        "theyDeleted": m2,
        "theyFroze": m3,
        "theyJoined": m4,
        "theyLeft": m5,
        "theySkipped": m6,
        "theyUnfroze": m7,
        "trackExpenses":
            MessageLookupByLibrary.simpleMessage("Отслеживать траты"),
        "unfreeze": MessageLookupByLibrary.simpleMessage("Разморозить"),
        "youCompleted": m8,
        "youDeleted": m9,
        "youFroze": m10,
        "youJoined": m11,
        "youLeft": m12,
        "youSkipped": m13,
        "youUnfroze": m14,
        "youWereShaken": m15,
        "yourName": MessageLookupByLibrary.simpleMessage("Ваше имя"),
        "yourTurn": m16,
        "yourTurnNotification": MessageLookupByLibrary.simpleMessage(
            "Уведомлять, когда наступила Ваша очередь")
      };
}
