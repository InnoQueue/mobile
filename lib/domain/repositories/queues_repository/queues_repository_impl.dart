import 'package:injectable/injectable.dart';

import '../../../application/application.dart';
import '../../../data/data.dart';
import '../../domain.dart';

@Singleton(as: QueuesRepository, env: ['prod', 'dev'])
class QueuesRepositoryImpl implements QueuesRepository {
  QueuesRepositoryImpl(this.queuesApi);

  @override
  QueuesApi queuesApi;

  @override
  Future<QueueListResponse> getQueues() async {
    SortEnum? currentSort = getIt.get<SettingsRepository>().getPrefferedSort();
    var response = await queuesApi.getQueues(
      currentSort != null ? QueueListRequest(sort: currentSort) : null,
    );

    return QueueListResponse.fromJson(response.data);
  }

  @override
  Future<List<TaskModel>> getTasks() async {
    var response = await queuesApi.getTasks();
    return TaskListResponse.fromJson(response.data).toDoTasks;
  }

  @override
  Future<void> createQueue({
    required String name,
    required String color,
    required bool trackExpenses,
  }) async {
    await queuesApi.createQueue(
      CreateQueueRequest(
        queueName: name,
        queueColor: color,
        trackExpenses: trackExpenses,
      ),
    );
  }

  @override
  Future<void> deleteQueue(int queueId) async {
    await queuesApi.deleteQueue((queueId));
  }

  @override
  Future<void> freezeQueue(int queueId) async {
    await queuesApi.freezeQueue((queueId));
  }

  @override
  Future<void> unfreezeQueue(int queueId) async {
    await queuesApi.unfreezeQueue((queueId));
  }

  @override
  Future<void> editQueue({
    required int queueId,
    required String name,
    required String color,
    required List<int> participantIds,
    required bool trackExpenses,
  }) async {
    await queuesApi.editQueue(
      queueId: queueId,
      request: EditQueueRequest(
        queueName: name,
        queueColor: color,
        trackExpenses: trackExpenses,
        participants: participantIds,
      ),
    );
  }

  @override
  Future<QueueModel> getQueue(int queueId) async {
    var response = await queuesApi.getQueue(queueId);
    return QueueModel.fromJson(response.data);
  }

  @override
  Future<void> completeTask({
    required int queueId,
    double? expenses,
  }) async {
    await queuesApi.completeTask(queueId, expenses: expenses);
  }

  @override
  Future<void> skipTask(int queueId) async {
    await queuesApi.skipTask(queueId);
  }

  @override
  Future<void> shakeUser(int queueId) async {
    await queuesApi.shakeUser(queueId);
  }
}
