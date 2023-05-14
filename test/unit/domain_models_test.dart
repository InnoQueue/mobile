import 'package:flutter_test/flutter_test.dart';
import 'package:innoq/domain/domain.dart';

void main() {
  test('Test Invitation Model', () {
    const InvitationModel invitation = InvitationModel(
      pinCode: 'pin_code',
      qrCode: 'qr_code',
    );

    final Map<String, dynamic> invitationEncoded = invitation.toJson();

    expect(invitationEncoded['pinCode'], 'pin_code');
    expect(invitationEncoded['qrCode'], 'qr_code');

    final InvitationModel invitiationDecoded =
        InvitationModel.fromJson(invitationEncoded);

    expect(invitiationDecoded, invitation);
  });

  test('Test Notification Model', () {
    final NotificationModel notification = NotificationModel(
      notificationId: 0,
      messageType: NotificationType.completed,
      message: 'message',
      participantId: 0,
      participantName: 'participant',
      queueId: 0,
      queueName: 'queue',
      date: DateTime.fromMillisecondsSinceEpoch(0),
      read: false,
    );

    final Map<String, dynamic> notificationEncoded = notification.toJson();

    expect(notificationEncoded['notificationId'], 0);
    expect(notificationEncoded['messageType'], 'COMPLETED');
    expect(notificationEncoded['message'], 'message');
    expect(notificationEncoded['participantId'], 0);
    expect(notificationEncoded['participantName'], 'participant');
    expect(notificationEncoded['queueId'], 0);
    expect(notificationEncoded['queueName'], 'queue');
    expect(
      notificationEncoded['date'],
      DateTime.fromMillisecondsSinceEpoch(0).toIso8601String(),
    );
    expect(notificationEncoded['read'], false);

    final NotificationModel notificationDecoded =
        NotificationModel.fromJson(notificationEncoded);

    expect(notificationDecoded, notification);
  });

  test('Test Notification Settings Model', () {
    const NotificationSettingsModel notificationSettings =
        NotificationSettingsModel(
      completed: false,
      skipped: true,
      joinedQueue: false,
      freeze: true,
      leftQueue: false,
      yourTurn: true,
    );

    final Map<String, dynamic> notificationSettingsEncoded =
        notificationSettings.toJson();

    expect(notificationSettingsEncoded['completed'], false);
    expect(notificationSettingsEncoded['skipped'], true);
    expect(notificationSettingsEncoded['joinedQueue'], false);
    expect(notificationSettingsEncoded['freeze'], true);
    expect(notificationSettingsEncoded['leftQueue'], false);
    expect(notificationSettingsEncoded['yourTurn'], true);

    final NotificationSettingsModel notificationSettingsDecoded =
        NotificationSettingsModel.fromJson(notificationSettingsEncoded);

    expect(notificationSettingsDecoded, notificationSettings);
  });

  test('Test Participant Model', () {
    const ParticipantModel participantModel = ParticipantModel(
      userId: 0,
      userName: 'user',
      expenses: 228,
      active: false,
      onDuty: true,
    );

    final Map<String, dynamic> participantModelEncoded =
        participantModel.toJson();

    expect(participantModelEncoded['userId'], 0);
    expect(participantModelEncoded['userName'], 'user');
    expect(participantModelEncoded['expenses'], 228);
    expect(participantModelEncoded['active'], false);
    expect(participantModelEncoded['onDuty'], true);

    final ParticipantModel participantModelDecoded =
        ParticipantModel.fromJson(participantModelEncoded);

    expect(participantModelDecoded, participantModel);
  });

  test('Test Queue Model', () {
    QueueModel queueModel = const QueueModel(
      queueId: 0,
      queueName: 'queue',
      queueColor: 'color',
      participants: [
        ParticipantModel(
          userId: 0,
          userName: 'user',
          expenses: 228,
          active: false,
          onDuty: true,
        ),
      ],
      trackExpenses: true,
      admin: false,
    );

    final Map<String, dynamic> queueModelEncoded = queueModel.toJson();

    expect(queueModelEncoded['queueId'], 0);
    expect(queueModelEncoded['queueName'], 'queue');
    expect(queueModelEncoded['queueColor'], 'color');
    expect(
      (queueModelEncoded['participants'] as List).first['userName'],
      'user',
    );
    expect(queueModelEncoded['trackExpenses'], true);
    expect(queueModelEncoded['admin'], false);

    final QueueModel queueModelDecoded = QueueModel.fromJson(queueModelEncoded);

    expect(queueModelDecoded, queueModel);
  });

  test('Test Sort Enum', () {
    SortEnum byQueueName = SortEnum.byQueueName;
    SortEnum byParticipantName = SortEnum.byParticipantName;
    SortEnum byDateJoined = SortEnum.byDateJoined;
    SortEnum byDueDate = SortEnum.byDueDate;

    expect(byQueueName.presentationName, 'By queue name');
    expect(byParticipantName.presentationName, 'By participant name');
    expect(byDateJoined.presentationName, 'By date joined');
    expect(byDueDate.presentationName, 'By due date');

    expect(SortEnum.getFromName('byQueueName'), byQueueName);
  });

  test('Test Task Model', () {
    const TaskModel taskModel = TaskModel(
      queueId: 0,
      queueName: 'queue',
      queueColor: 'color',
      trackExpenses: true,
      important: false,
    );

    final Map<String, dynamic> taskModelEncoded = taskModel.toJson();

    expect(taskModelEncoded['queueId'], 0);
    expect(taskModelEncoded['queueName'], 'queue');
    expect(taskModelEncoded['queueColor'], 'color');
    expect(taskModelEncoded['trackExpenses'], true);
    expect(taskModelEncoded['important'], false);

    final TaskModel taskModelDecoded = TaskModel.fromJson(taskModelEncoded);

    expect(taskModelDecoded, taskModel);
  });
}
