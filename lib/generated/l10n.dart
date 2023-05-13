// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Tasks`
  String get tasks {
    return Intl.message(
      'Tasks',
      name: 'tasks',
      desc: '',
      args: [],
    );
  }

  /// `Queues`
  String get queues {
    return Intl.message(
      'Queues',
      name: 'queues',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Add progress`
  String get addProgress {
    return Intl.message(
      'Add progress',
      name: 'addProgress',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `On duty:`
  String get onDuty {
    return Intl.message(
      'On duty:',
      name: 'onDuty',
      desc: '',
      args: [],
    );
  }

  /// `Other participants:`
  String get otherParticipants {
    return Intl.message(
      'Other participants:',
      name: 'otherParticipants',
      desc: '',
      args: [],
    );
  }

  /// `Leave`
  String get leave {
    return Intl.message(
      'Leave',
      name: 'leave',
      desc: '',
      args: [],
    );
  }

  /// `Freeze`
  String get freeze {
    return Intl.message(
      'Freeze',
      name: 'freeze',
      desc: '',
      args: [],
    );
  }

  /// `Unfreeze`
  String get unfreeze {
    return Intl.message(
      'Unfreeze',
      name: 'unfreeze',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `shake`
  String get shake {
    return Intl.message(
      'shake',
      name: 'shake',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Participants:`
  String get participants {
    return Intl.message(
      'Participants:',
      name: 'participants',
      desc: '',
      args: [],
    );
  }

  /// `Track expenses`
  String get trackExpenses {
    return Intl.message(
      'Track expenses',
      name: 'trackExpenses',
      desc: '',
      args: [],
    );
  }

  /// `spent`
  String get spent {
    return Intl.message(
      'spent',
      name: 'spent',
      desc: '',
      args: [],
    );
  }

  /// `Create a Queue`
  String get createQueue {
    return Intl.message(
      'Create a Queue',
      name: 'createQueue',
      desc: '',
      args: [],
    );
  }

  /// `input name`
  String get inputName {
    return Intl.message(
      'input name',
      name: 'inputName',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR code`
  String get scanQrCode {
    return Intl.message(
      'Scan QR code',
      name: 'scanQrCode',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Enter PIN code`
  String get enterPinCode {
    return Intl.message(
      'Enter PIN code',
      name: 'enterPinCode',
      desc: '',
      args: [],
    );
  }

  /// `Notification settings`
  String get notificationSettings {
    return Intl.message(
      'Notification settings',
      name: 'notificationSettings',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Leave feedback`
  String get leaveFeedback {
    return Intl.message(
      'Leave feedback',
      name: 'leaveFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Notify when someone completes a task`
  String get taskCompleteNotification {
    return Intl.message(
      'Notify when someone completes a task',
      name: 'taskCompleteNotification',
      desc: '',
      args: [],
    );
  }

  /// `Notify when someone skips a task`
  String get taskSkippedNotification {
    return Intl.message(
      'Notify when someone skips a task',
      name: 'taskSkippedNotification',
      desc: '',
      args: [],
    );
  }

  /// `Notify when someone joins a queue`
  String get queueJoinedNotification {
    return Intl.message(
      'Notify when someone joins a queue',
      name: 'queueJoinedNotification',
      desc: '',
      args: [],
    );
  }

  /// `Notify when someone freezes a queue`
  String get queueFrozenNotification {
    return Intl.message(
      'Notify when someone freezes a queue',
      name: 'queueFrozenNotification',
      desc: '',
      args: [],
    );
  }

  /// `Notify when someone leaves a queue`
  String get queueLeftNotification {
    return Intl.message(
      'Notify when someone leaves a queue',
      name: 'queueLeftNotification',
      desc: '',
      args: [],
    );
  }

  /// `Notify when it's Your turn`
  String get yourTurnNotification {
    return Intl.message(
      'Notify when it\'s Your turn',
      name: 'yourTurnNotification',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get dark {
    return Intl.message(
      'Dark',
      name: 'dark',
      desc: '',
      args: [],
    );
  }

  /// `Your name`
  String get yourName {
    return Intl.message(
      'Your name',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get system {
    return Intl.message(
      'System',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `It's now Your turn in the queue **{queueName}**`
  String yourTurn(Object queueName) {
    return Intl.message(
      'It\'s now Your turn in the queue **$queueName**',
      name: 'yourTurn',
      desc: '',
      args: [queueName],
    );
  }

  /// `**{participantName}** is now responsible for the queue **{queueName}**`
  String theirTurn(Object participantName, Object queueName) {
    return Intl.message(
      '**$participantName** is now responsible for the queue **$queueName**',
      name: 'theirTurn',
      desc: '',
      args: [participantName, queueName],
    );
  }

  /// `You were shaken by roommate to remind You that it is Your turn in **{queueName}**`
  String youWereShaken(Object queueName) {
    return Intl.message(
      'You were shaken by roommate to remind You that it is Your turn in **$queueName**',
      name: 'youWereShaken',
      desc: '',
      args: [queueName],
    );
  }

  /// `You froze the queue **{queueName}**`
  String youFroze(Object queueName) {
    return Intl.message(
      'You froze the queue **$queueName**',
      name: 'youFroze',
      desc: '',
      args: [queueName],
    );
  }

  /// `**{participantName}** froze the queue **{queueName}**`
  String theyFroze(Object participantName, Object queueName) {
    return Intl.message(
      '**$participantName** froze the queue **$queueName**',
      name: 'theyFroze',
      desc: '',
      args: [participantName, queueName],
    );
  }

  /// `You unfroze the queue **{queueName}**`
  String youUnfroze(Object queueName) {
    return Intl.message(
      'You unfroze the queue **$queueName**',
      name: 'youUnfroze',
      desc: '',
      args: [queueName],
    );
  }

  /// `**{participantName}** unfroze the queue **{queueName}**`
  String theyUnfroze(Object participantName, Object queueName) {
    return Intl.message(
      '**$participantName** unfroze the queue **$queueName**',
      name: 'theyUnfroze',
      desc: '',
      args: [participantName, queueName],
    );
  }

  /// `You joined the queue **{queueName}**`
  String youJoined(Object queueName) {
    return Intl.message(
      'You joined the queue **$queueName**',
      name: 'youJoined',
      desc: '',
      args: [queueName],
    );
  }

  /// `**{participantName}** joined the queue **{queueName}**`
  String theyJoined(Object participantName, Object queueName) {
    return Intl.message(
      '**$participantName** joined the queue **$queueName**',
      name: 'theyJoined',
      desc: '',
      args: [participantName, queueName],
    );
  }

  /// `You left the queue **{queueName}**`
  String youLeft(Object queueName) {
    return Intl.message(
      'You left the queue **$queueName**',
      name: 'youLeft',
      desc: '',
      args: [queueName],
    );
  }

  /// `**{participantName}** left the queue **{queueName}**`
  String theyLeft(Object participantName, Object queueName) {
    return Intl.message(
      '**$participantName** left the queue **$queueName**',
      name: 'theyLeft',
      desc: '',
      args: [participantName, queueName],
    );
  }

  /// `You deleted the queue **{queueName}**`
  String youDeleted(Object queueName) {
    return Intl.message(
      'You deleted the queue **$queueName**',
      name: 'youDeleted',
      desc: '',
      args: [queueName],
    );
  }

  /// `**{participantName}** deleted the queue **{queueName}**`
  String theyDeleted(Object participantName, Object queueName) {
    return Intl.message(
      '**$participantName** deleted the queue **$queueName**',
      name: 'theyDeleted',
      desc: '',
      args: [participantName, queueName],
    );
  }

  /// `You completed the queue **{queueName}**`
  String youCompleted(Object queueName) {
    return Intl.message(
      'You completed the queue **$queueName**',
      name: 'youCompleted',
      desc: '',
      args: [queueName],
    );
  }

  /// `**{participantName}** completed the queue **{queueName}**`
  String theyCompleted(Object participantName, Object queueName) {
    return Intl.message(
      '**$participantName** completed the queue **$queueName**',
      name: 'theyCompleted',
      desc: '',
      args: [participantName, queueName],
    );
  }

  /// `You skipped the queue **{queueName}**`
  String youSkipped(Object queueName) {
    return Intl.message(
      'You skipped the queue **$queueName**',
      name: 'youSkipped',
      desc: '',
      args: [queueName],
    );
  }

  /// `**{participantName}** skipped the queue **{queueName}**`
  String theySkipped(Object participantName, Object queueName) {
    return Intl.message(
      '**$participantName** skipped the queue **$queueName**',
      name: 'theySkipped',
      desc: '',
      args: [participantName, queueName],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Choose Color`
  String get chooseColor {
    return Intl.message(
      'Choose Color',
      name: 'chooseColor',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get sort {
    return Intl.message(
      'Sort',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `By queue name`
  String get byQueueName {
    return Intl.message(
      'By queue name',
      name: 'byQueueName',
      desc: '',
      args: [],
    );
  }

  /// `By participant name`
  String get byParticipantName {
    return Intl.message(
      'By participant name',
      name: 'byParticipantName',
      desc: '',
      args: [],
    );
  }

  /// `By Date Joined`
  String get byDateJoined {
    return Intl.message(
      'By Date Joined',
      name: 'byDateJoined',
      desc: '',
      args: [],
    );
  }

  /// `By Due Date`
  String get byDueDate {
    return Intl.message(
      'By Due Date',
      name: 'byDueDate',
      desc: '',
      args: [],
    );
  }

  /// `Apply sorting`
  String get applySorting {
    return Intl.message(
      'Apply sorting',
      name: 'applySorting',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
