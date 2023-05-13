import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:innoq/presentation/presentation.dart';

void main() {
  test('Test russian translations', () async {
    await S.load(const Locale('ru'));
    S s = S();

    expect(s.tasks, 'Задания');
    expect(s.queues, 'Очереди');
    expect(s.notifications, 'Уведомления');
    expect(s.settings, 'Настройки');
    expect(s.addProgress, 'Добавить прогресс');
    expect(s.skip, 'Пропустить');
    expect(s.onDuty, 'Дежурный:');
    expect(s.otherParticipants, 'Другие участники:');
    expect(s.leave, 'Покинуть');
    expect(s.freeze, 'Заморозить');
    expect(s.unfreeze, 'Разморозить');
    expect(s.share, 'Поделиться');
    expect(s.shake, 'тряхнуть');
    expect(s.edit, 'Редактировать');
    expect(s.participants, 'Участники:');
    expect(s.trackExpenses, 'Отслеживать траты');
    expect(s.spent, 'потрачено');
    expect(s.createQueue, 'Создать Очередь');
    expect(s.inputName, 'введите имя');
    expect(s.create, 'Создать');
    expect(s.scanQrCode, 'Отсканируйте QR-код');
    expect(s.or, 'или');
    expect(s.enterPinCode, 'Введите пин-код');
    expect(s.notificationSettings, 'Настройки уведомлений');
    expect(s.theme, 'Тема');
    expect(s.language, 'Язык');
    expect(s.leaveFeedback, 'Обратная связь');
    expect(
      s.taskCompleteNotification,
      'Уведомлять, когда кто-то завершил задание',
    );
    expect(
      s.taskSkippedNotification,
      'Уведомлять, когда кто-то пропустил задание',
    );
    expect(
      s.queueJoinedNotification,
      'Уведомлять, когда кто-то присоединился к очереди',
    );
    expect(
      s.queueFrozenNotification,
      'Уведомлять, когда кто-то заморозил очередь',
    );
    expect(s.queueLeftNotification, 'Уведомлять, когда кто-то покинул очередь');
    expect(s.yourTurnNotification, 'Уведомлять, когда наступила Ваша очередь');
    expect(s.light, 'Светлая');
    expect(s.dark, 'Темная');
    expect(s.yourName, 'Ваше имя');
    expect(s.save, 'Сохранить');
    expect(s.system, 'Системный');
    expect(s.yourTurn('queueName'), 'Сейчас Ваша очередь в **queueName**');
    expect(
      s.theirTurn('participantName', 'queueName'),
      'Сейчас очередь **participantName** в **queueName**',
    );
    expect(
      s.youWereShaken('queueName'),
      'Вас встряхнули, чтобы напомнить Вам, что сейчас Ваша очередь в **queueName**',
    );
    expect(
      s.youFroze('queueName'),
      'Вы заморозили **queueName**',
    );
    expect(
      s.theyFroze('participantName', 'queueName'),
      '**participantName** заморозил(-а, -и) **queueName**',
    );
    expect(
      s.youUnfroze('queueName'),
      'Вы разморозили **queueName**',
    );
    expect(
      s.theyUnfroze('participantName', 'queueName'),
      '**participantName** разморозил(-а, -и) **queueName**',
    );
    expect(
      s.youJoined('queueName'),
      'Вы просоединились к **queueName**',
    );
    expect(
      s.theyJoined('participantName', 'queueName'),
      '**participantName** присоединился(-ась, -ись) к **queueName**',
    );
    expect(s.youLeft('queueName'), 'Вы покинули **queueName**');
    expect(
      s.theyLeft('participantName', 'queueName'),
      '**participantName** покинул(-а, -и) **queueName**',
    );
    expect(s.youDeleted('queueName'), 'Вы удалили **queueName**');
    expect(
      s.theyDeleted('participantName', 'queueName'),
      '**participantName** удалил(-а, -и) **queueName**',
    );
    expect(s.youCompleted('queueName'), 'Вы завершили **queueName**');
    expect(
      s.theyCompleted('participantName', 'queueName'),
      '**participantName** завершил(-а, -и) **queueName**',
    );
    expect(s.youSkipped('queueName'), 'Вы пропустили **queueName**');
    expect(
      s.theySkipped('participantName', 'queueName'),
      '**participantName** пропустил(а, -и) **queueName**',
    );
    expect(s.submit, 'Готово');
    expect(s.chooseColor, 'Выберите цвет');
    expect(s.sort, 'Сортировка');
    expect(s.byQueueName, 'По названию очереди');
    expect(s.byParticipantName, 'По имени учатсника');
    expect(s.byDateJoined, 'По дате присоединения');
    expect(s.byDueDate, 'По сроку завершения');
    expect(s.applySorting, 'Применить');
  });

  test('Test english translations', () async {
    await S.load(const Locale('en'));
    S s = S();

    expect(s.tasks, 'Tasks');
    expect(s.queues, 'Queues');
    expect(s.notifications, 'Notifications');
    expect(s.settings, 'Settings');
    expect(s.addProgress, 'Add progress');
    expect(s.skip, 'Skip');
    expect(s.onDuty, 'On duty:');
    expect(s.otherParticipants, 'Other participants:');
    expect(s.leave, 'Leave');
    expect(s.freeze, 'Freeze');
    expect(s.unfreeze, 'Unfreeze');
    expect(s.share, 'Share');
    expect(s.shake, 'shake');
    expect(s.edit, 'Edit');
    expect(s.participants, 'Participants:');
    expect(s.trackExpenses, 'Track expenses');
    expect(s.spent, 'spent');
    expect(s.createQueue, 'Create a Queue');
    expect(s.inputName, 'input name');
    expect(s.create, 'Create');
    expect(s.scanQrCode, 'Scan QR code');
    expect(s.or, 'or');
    expect(s.enterPinCode, 'Enter PIN code');
    expect(s.notificationSettings, 'Notification settings');
    expect(s.theme, 'Theme');
    expect(s.language, 'Language');
    expect(s.leaveFeedback, 'Leave feedback');
    expect(
      s.taskCompleteNotification,
      'Notify when someone completes a task',
    );
    expect(
      s.taskSkippedNotification,
      'Notify when someone skips a task',
    );
    expect(
      s.queueJoinedNotification,
      'Notify when someone joins a queue',
    );
    expect(
      s.queueFrozenNotification,
      'Notify when someone freezes a queue',
    );
    expect(s.queueLeftNotification, 'Notify when someone leaves a queue');
    expect(s.yourTurnNotification, 'Notify when it\'s Your turn');
    expect(s.light, 'Light');
    expect(s.dark, 'Dark');
    expect(s.yourName, 'Your name');
    expect(s.save, 'Save');
    expect(s.system, 'System');
    expect(
      s.yourTurn('queueName'),
      'It\'s now Your turn in the queue **queueName**',
    );
    expect(
      s.theirTurn('participantName', 'queueName'),
      '**participantName** is now responsible for the queue **queueName**',
    );
    expect(
      s.youWereShaken('queueName'),
      'You were shaken by roommate to remind You that it is Your turn in **queueName**',
    );
    expect(
      s.youFroze('queueName'),
      'You froze the queue **queueName**',
    );
    expect(
      s.theyFroze('participantName', 'queueName'),
      '**participantName** froze the queue **queueName**',
    );
    expect(
      s.youUnfroze('queueName'),
      'You unfroze the queue **queueName**',
    );
    expect(
      s.theyUnfroze('participantName', 'queueName'),
      '**participantName** unfroze the queue **queueName**',
    );
    expect(
      s.youJoined('queueName'),
      'You joined the queue **queueName**',
    );
    expect(
      s.theyJoined('participantName', 'queueName'),
      '**participantName** joined the queue **queueName**',
    );
    expect(s.youLeft('queueName'), 'You left the queue **queueName**');
    expect(
      s.theyLeft('participantName', 'queueName'),
      '**participantName** left the queue **queueName**',
    );
    expect(s.youDeleted('queueName'), 'You deleted the queue **queueName**');
    expect(
      s.theyDeleted('participantName', 'queueName'),
      '**participantName** deleted the queue **queueName**',
    );
    expect(
      s.youCompleted('queueName'),
      'You completed the queue **queueName**',
    );
    expect(
      s.theyCompleted('participantName', 'queueName'),
      '**participantName** completed the queue **queueName**',
    );
    expect(s.youSkipped('queueName'), 'You skipped the queue **queueName**');
    expect(
      s.theySkipped('participantName', 'queueName'),
      '**participantName** skipped the queue **queueName**',
    );
    expect(s.submit, 'Submit');
    expect(s.chooseColor, 'Choose Color');
    expect(s.sort, 'Sort');
    expect(s.byQueueName, 'By queue name');
    expect(s.byParticipantName, 'By participant name');
    expect(s.byDateJoined, 'By Date Joined');
    expect(s.byDueDate, 'By Due Date');
    expect(s.applySorting, 'Apply sorting');
  });
}
