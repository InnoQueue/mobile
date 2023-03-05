import 'package:injectable/injectable.dart';

import '../../application/application.dart';
import '../../data/data.dart';
import '../domain.dart';

@Singleton()
class QueuesRepository {
  QueuesApi queuesApi;
  QueuesRepository(this.queuesApi);

  Future<QueueListResponse> getQueues() async {
    SortEnum? currentSort = getIt.get<SettingsRepository>().getPrefferedSort();
    return QueueListResponse.fromJson((await queuesApi.getQueues(
            currentSort != null ? QueueListRequest(sort: currentSort) : null))
        .data);
  }

  Future<List<TaskModel>> getTasks() async {
    var response = await queuesApi.getTasks();
    return TaskListResponse.fromJson(response.data).toDoTasks;
  }

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

  Future<void> deleteQueue(int queueId) async {
    await queuesApi.deleteQueue((queueId));
  }

  Future<void> freezeQueue(int queueId) async {
    await queuesApi.freezeQueue((queueId));
  }

  Future<void> unfreezeQueue(int queueId) async {
    await queuesApi.unfreezeQueue((queueId));
  }

  Future<QueueModel> editQueue({
    required int queueId,
    required String name,
    required String color,
    required List<int> participantIds,
    required bool trackExpenses,
  }) async {
    var response = await queuesApi.editQueue(
      queueId: queueId,
      request: EditQueueRequest(
        queueName: name,
        queueColor: color,
        trackExpenses: trackExpenses,
        participants: participantIds,
      ),
    );

    return QueueModel.fromJson(response.data);
  }

  Future<QueueModel> getQueue(int queueId) async {
    var response = await queuesApi.getQueue(queueId);
    return QueueModel.fromJson(response.data);
  }

  Future<void> completeTask({
    required int queueId,
    double? expenses,
  }) async {
    await queuesApi.completeTask(queueId, expenses: expenses);
  }

  Future<void> skipTask(int queueId) async {
    await queuesApi.skipTask(queueId);
  }

  Future<void> shakeUser(int queueId) async {
    await queuesApi.shakeUser(queueId);
  }
}
