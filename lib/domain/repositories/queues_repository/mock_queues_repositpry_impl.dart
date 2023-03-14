import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../../data/data.dart';
import '../../domain.dart';

@Singleton(as: QueuesRepository, env: ['test'])
class MockQueuesRepositoryImpl implements QueuesRepository {
  @override
  late QueuesApi queuesApi;

  late final _queues = [
    QueueModel(
      queueId: 0,
      queueName: 'First',
      queueColor: 'RED',
      participants: [
        ParticipantModel(
          userId: _myId,
          userName: _myName,
          expenses: 0,
          active: true,
          onDuty: true,
        ),
        const ParticipantModel(
          userId: 1,
          userName: 'Bob',
          expenses: 0,
          active: true,
          onDuty: false,
        ),
      ],
      trackExpenses: false,
      admin: true,
    ),
  ];

  List<TaskModel> get _tasks => _queues
      .where((element) =>
          element.participants.any((element) => element.userId == _myId))
      .map((e) => TaskModel(
            queueId: e.queueId,
            queueName: e.queueName,
            queueColor: e.queueColor,
            trackExpenses: e.trackExpenses,
            important: false,
          ))
      .toList();

  final int _myId = 0;
  final String _myName = 'Tom';

  final List<UserModel> users = [
    const UserModel(
      userId: 0,
      token: '1',
      fcmToken: '1',
      userName: 'Tom',
    ),
    const UserModel(
      userId: 1,
      token: '2',
      fcmToken: '2',
      userName: 'Bob',
    ),
  ];

  @override
  Future<QueueListResponse> getQueues() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return QueueListResponse(
      queues: _queues
          .map(
            (e) => QueueInfo(
              queueId: e.queueId,
              queueName: e.queueName,
              queueColor: e.queueColor,
              onDutyUserName: e.participants
                  .firstWhere((element) => element.onDuty)
                  .userName,
              active: e.participants
                  .firstWhere((element) => element.userId == _myId)
                  .active,
            ),
          )
          .toList(),
    );
  }

  @override
  Future<List<TaskModel>> getTasks() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _tasks;
  }

  @override
  Future<void> createQueue({
    required String name,
    required String color,
    required bool trackExpenses,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _queues.add(
      QueueModel(
        queueId: _queues.map((e) => e.queueId).max + 1,
        queueName: name,
        queueColor: color,
        participants: [
          ParticipantModel(
            userId: _myId,
            userName: _myName,
            expenses: 0,
            active: true,
            onDuty: true,
          ),
        ],
        trackExpenses: trackExpenses,
        admin: true,
      ),
    );
  }

  @override
  Future<void> deleteQueue(int queueId) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _queues.removeWhere((element) => element.queueId == queueId);
  }

  @override
  Future<void> freezeQueue(int queueId) async {
    await Future.delayed(const Duration(milliseconds: 300));

    int queueIdx = _queues.indexWhere((element) => element.queueId == queueId);
    if (queueIdx == -1) return;

    int myIdx = _queues[queueIdx]
        .participants
        .indexWhere((element) => element.userId == _myId);
    if (myIdx == -1) return;

    _queues[queueIdx] = _queues[queueIdx].copyWith(
      participants: _queues[queueId].participants.toList()
        ..replaceRange(myIdx, myIdx + 1, [
          _queues[queueId].participants[myIdx].copyWith(active: false),
        ]),
    );
  }

  @override
  Future<void> unfreezeQueue(int queueId) async {
    await Future.delayed(const Duration(milliseconds: 300));

    int queueIdx = _queues.indexWhere((element) => element.queueId == queueId);
    if (queueIdx == -1) return;

    int myIdx = _queues[queueIdx]
        .participants
        .indexWhere((element) => element.userId == _myId);
    if (myIdx == -1) return;

    _queues[queueIdx] = _queues[queueIdx].copyWith(
      participants: _queues[queueId].participants.toList()
        ..replaceRange(myIdx, myIdx + 1, [
          _queues[queueId].participants[myIdx].copyWith(active: true),
        ]),
    );
  }

  @override
  Future<void> editQueue({
    required int queueId,
    required String name,
    required String color,
    required List<int> participantIds,
    required bool trackExpenses,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    int queueIdx = _queues.indexWhere((element) => element.queueId == queueId);
    if (queueIdx == -1) return;

    int myIdx = _queues[queueIdx]
        .participants
        .indexWhere((element) => element.userId == _myId);
    if (myIdx == -1) return;

    _queues[queueIdx] = _queues[queueIdx].copyWith(
      queueId: queueId,
      queueName: name,
      queueColor: color,
      trackExpenses: trackExpenses,
      participants: users
          .where((element) => participantIds.contains(element.userId))
          .map(
            (e) => ParticipantModel(
              userId: e.userId,
              userName: e.userName,
              expenses: 0,
              active: true,
              onDuty: e.userId == _myId,
            ),
          )
          .toList(),
    );
  }

  @override
  Future<QueueModel> getQueue(int queueId) async {
    await Future.delayed(const Duration(milliseconds: 300));

    int queueIdx = _queues.indexWhere((element) => element.queueId == queueId);
    if (queueIdx == -1) {
      throw Exception('Queue with id $queueId does not exist');
    }

    return _queues[queueIdx];
  }

  @override
  Future<void> completeTask({
    required int queueId,
    double? expenses,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    int queueIdx = _queues.indexWhere((element) => element.queueId == queueId);
    if (queueIdx == -1) return;

    _queues[queueId] = _queues[queueId].copyWith(participants: [
      for (final participant in _queues[queueId].participants)
        participant.copyWith(
          onDuty: participant.userId != _myId,
        ),
    ]);
  }

  @override
  Future<void> skipTask(int queueId) async {
    await Future.delayed(const Duration(milliseconds: 300));

    int queueIdx = _queues.indexWhere((element) => element.queueId == queueId);
    if (queueIdx == -1) return;

    _queues[queueId] = _queues[queueId].copyWith(participants: [
      for (final participant in _queues[queueId].participants)
        participant.copyWith(
          onDuty: participant.userId != _myId,
        ),
    ]);
  }

  @override
  Future<void> shakeUser(int queueId) async {
    await Future.delayed(const Duration(milliseconds: 300));
  }
}
