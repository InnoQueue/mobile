// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(participantName, queueName) =>
      "**${participantName}** is now responsible for the queue **${queueName}**";

  static String m1(participantName, queueName) =>
      "**${participantName}** completed the queue **${queueName}**";

  static String m2(participantName, queueName) =>
      "**${participantName}** deleted the queue **${queueName}**";

  static String m3(participantName, queueName) =>
      "**${participantName}** froze the queue **${queueName}**";

  static String m4(participantName, queueName) =>
      "**${participantName}** joined the queue **${queueName}**";

  static String m5(participantName, queueName) =>
      "**${participantName}** left the queue **${queueName}**";

  static String m6(participantName, queueName) =>
      "**${participantName}** skipped the queue **${queueName}**";

  static String m7(participantName, queueName) =>
      "**${participantName}** unfroze the queue **${queueName}**";

  static String m8(queueName) => "You completed the queue **${queueName}**";

  static String m9(queueName) => "You deleted the queue **${queueName}**";

  static String m10(queueName) => "You froze the queue **${queueName}**";

  static String m11(queueName) => "You joined the queue **${queueName}**";

  static String m12(queueName) => "You left the queue **${queueName}**";

  static String m13(queueName) => "You skipped the queue **${queueName}**";

  static String m14(queueName) => "You unfroze the queue **${queueName}**";

  static String m15(queueName) =>
      "You were shaken by roommate to remind You that it is Your turn in **${queueName}**";

  static String m16(queueName) =>
      "It\'s now Your turn in the queue **${queueName}**";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addProgress": MessageLookupByLibrary.simpleMessage("Add progress"),
        "applySorting": MessageLookupByLibrary.simpleMessage("Apply sorting"),
        "byDateJoined": MessageLookupByLibrary.simpleMessage("By Date Joined"),
        "byDueDate": MessageLookupByLibrary.simpleMessage("By Due Date"),
        "byParticipantName":
            MessageLookupByLibrary.simpleMessage("By participant name"),
        "byQueueName": MessageLookupByLibrary.simpleMessage("By queue name"),
        "chooseColor": MessageLookupByLibrary.simpleMessage("Choose Color"),
        "create": MessageLookupByLibrary.simpleMessage("Create"),
        "createQueue": MessageLookupByLibrary.simpleMessage("Create a Queue"),
        "dark": MessageLookupByLibrary.simpleMessage("Dark"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "enterPinCode": MessageLookupByLibrary.simpleMessage("Enter PIN code"),
        "freeze": MessageLookupByLibrary.simpleMessage("Freeze"),
        "inputName": MessageLookupByLibrary.simpleMessage("input name"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "leave": MessageLookupByLibrary.simpleMessage("Leave"),
        "leaveFeedback": MessageLookupByLibrary.simpleMessage("Leave feedback"),
        "light": MessageLookupByLibrary.simpleMessage("Light"),
        "notificationSettings":
            MessageLookupByLibrary.simpleMessage("Notification settings"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "onDuty": MessageLookupByLibrary.simpleMessage("On duty:"),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "otherParticipants":
            MessageLookupByLibrary.simpleMessage("Other participants:"),
        "participants": MessageLookupByLibrary.simpleMessage("Participants:"),
        "queueFrozenNotification": MessageLookupByLibrary.simpleMessage(
            "Notify when someone freezes a queue"),
        "queueJoinedNotification": MessageLookupByLibrary.simpleMessage(
            "Notify when someone joins a queue"),
        "queueLeftNotification": MessageLookupByLibrary.simpleMessage(
            "Notify when someone leaves a queue"),
        "queues": MessageLookupByLibrary.simpleMessage("Queues"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "scanQrCode": MessageLookupByLibrary.simpleMessage("Scan QR code"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "shake": MessageLookupByLibrary.simpleMessage("shake"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "sort": MessageLookupByLibrary.simpleMessage("Sort"),
        "spent": MessageLookupByLibrary.simpleMessage("spent"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "system": MessageLookupByLibrary.simpleMessage("System"),
        "taskCompleteNotification": MessageLookupByLibrary.simpleMessage(
            "Notify when someone completes a task"),
        "taskSkippedNotification": MessageLookupByLibrary.simpleMessage(
            "Notify when someone skips a task"),
        "tasks": MessageLookupByLibrary.simpleMessage("Tasks"),
        "theirTurn": m0,
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "theyCompleted": m1,
        "theyDeleted": m2,
        "theyFroze": m3,
        "theyJoined": m4,
        "theyLeft": m5,
        "theySkipped": m6,
        "theyUnfroze": m7,
        "trackExpenses": MessageLookupByLibrary.simpleMessage("Track expenses"),
        "unfreeze": MessageLookupByLibrary.simpleMessage("Unfreeze"),
        "youCompleted": m8,
        "youDeleted": m9,
        "youFroze": m10,
        "youJoined": m11,
        "youLeft": m12,
        "youSkipped": m13,
        "youUnfroze": m14,
        "youWereShaken": m15,
        "yourName": MessageLookupByLibrary.simpleMessage("Your name"),
        "yourTurn": m16,
        "yourTurnNotification":
            MessageLookupByLibrary.simpleMessage("Notify when it\'s Your turn")
      };
}
