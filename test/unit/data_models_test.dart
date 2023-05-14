import 'package:flutter_test/flutter_test.dart';
import 'package:innoq/data/data.dart';
import 'package:innoq/domain/domain.dart';

void main() {
  test('Test Create Queue Request Model', () {
    const CreateQueueRequest createQueueRequest = CreateQueueRequest(
      queueName: 'queue',
      queueColor: 'color',
      trackExpenses: true,
    );
    final Map<String, dynamic> createQueueRequestEncoded =
        createQueueRequest.toJson();

    expect(createQueueRequestEncoded['queueName'], 'queue');
    expect(createQueueRequestEncoded['queueColor'], 'color');
    expect(createQueueRequestEncoded['trackExpenses'], true);

    final CreateQueueRequest createQueueRequestDecoded =
        CreateQueueRequest.fromJson(createQueueRequestEncoded);

    expect(createQueueRequestDecoded, createQueueRequest);
  });

  test('Test Create Edit Request Model', () {
    const EditQueueRequest editQueueRequest = EditQueueRequest(
      queueName: 'queue',
      queueColor: 'color',
      trackExpenses: true,
      participants: [228],
    );
    final Map<String, dynamic> editQueueRequestEncoded =
        editQueueRequest.toJson();

    expect(editQueueRequestEncoded['queueName'], 'queue');
    expect(editQueueRequestEncoded['queueColor'], 'color');
    expect(editQueueRequestEncoded['trackExpenses'], true);
    expect(editQueueRequestEncoded['participants'].first, 228);

    final EditQueueRequest editQueueRequestDecoded =
        EditQueueRequest.fromJson(editQueueRequestEncoded);

    expect(editQueueRequestDecoded, editQueueRequest);
  });

  test('Test Notification List Response Model', () {
    final NotificationListResponse notificationListResponse =
        NotificationListResponse(
      content: [
        NotificationModel(
          notificationId: 0,
          messageType: NotificationType.completed,
          message: 'message',
          participantId: 0,
          participantName: 'participant',
          queueId: 0,
          queueName: 'queue',
          date: DateTime.fromMicrosecondsSinceEpoch(0),
          read: false,
        ),
      ],
      last: false,
    );
    final Map<String, dynamic> notificationListResponseEncoded =
        notificationListResponse.toJson();

    expect(
      notificationListResponseEncoded['content'].first['notificationId'],
      0,
    );
    expect(notificationListResponseEncoded['last'], false);

    final NotificationListResponse notificationListResponseDecoded =
        NotificationListResponse.fromJson(notificationListResponseEncoded);

    expect(notificationListResponseDecoded, notificationListResponse);
  });

  test('Test Queue Info Model', () {
    const QueueInfo queueInfo = QueueInfo(
      queueId: 0,
      queueName: 'queue',
      queueColor: 'color',
      onDutyUserName: 'user',
      active: true,
    );
    final Map<String, dynamic> queueInfoEncoded = queueInfo.toJson();

    expect(queueInfoEncoded['queueId'], 0);
    expect(queueInfoEncoded['queueName'], 'queue');
    expect(queueInfoEncoded['queueColor'], 'color');
    expect(queueInfoEncoded['onDutyUserName'], 'user');
    expect(queueInfoEncoded['active'], true);

    final QueueInfo queueInfoDecoded = QueueInfo.fromJson(queueInfoEncoded);

    expect(queueInfoDecoded, queueInfo);
  });

  test('Test Queue List Request', () {
    const QueueListRequest queueListRequest = QueueListRequest(
      sort: SortEnum.byDueDate,
    );

    final Map<String, dynamic> queueListRequestEncoded =
        queueListRequest.toJson();

    expect(queueListRequestEncoded['sort'], 'todo');

    final QueueListRequest queueListRequestDecoded =
        QueueListRequest.fromJson(queueListRequestEncoded);

    expect(queueListRequestDecoded, queueListRequest);
  });

  test('Test Queue List Response', () {
    const QueueListResponse queueListResponse = QueueListResponse(
      queues: [
        QueueInfo(
          queueId: 0,
          queueName: 'queue',
          queueColor: 'color',
          onDutyUserName: 'user',
          active: true,
        ),
      ],
    );
    final Map<String, dynamic> queueListResponseEncoded =
        queueListResponse.toJson();

    expect(queueListResponseEncoded['queues'].first['queueName'], 'queue');

    final QueueListResponse queueListResponseDecoded =
        QueueListResponse.fromJson(queueListResponseEncoded);

    expect(queueListResponseDecoded, queueListResponse);
  });

  test('Test Signup Response', () {
    const SignupResponse signupResponse = SignupResponse(
      token: 'token',
      userId: 0,
    );

    final Map<String, dynamic> signupResponseEncoded = signupResponse.toJson();

    expect(signupResponseEncoded['token'], 'token');
    expect(signupResponseEncoded['userId'], 0);

    final SignupResponse signupResponseDecoded =
        SignupResponse.fromJson(signupResponseEncoded);

    expect(signupResponseDecoded, signupResponse);
  });

  test('Test Task List Response', () {
    const TaskListResponse taskListResponse = TaskListResponse(
      toDoTasks: [
        TaskModel(
          queueId: 0,
          queueName: 'queue',
          queueColor: 'color',
          trackExpenses: true,
          important: false,
        ),
      ],
    );

    final Map<String, dynamic> taskListResponseEncoded =
        taskListResponse.toJson();

    expect(taskListResponseEncoded['toDoTasks'].first['queueId'], 0);

    final TaskListResponse taskListResponseDecoded =
        TaskListResponse.fromJson(taskListResponseEncoded);

    expect(taskListResponseDecoded, taskListResponse);
  });
}
