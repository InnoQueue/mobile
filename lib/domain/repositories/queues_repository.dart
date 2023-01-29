import 'package:injectable/injectable.dart';

import '../../data/data.dart';
import '../domain.dart';

@Singleton()
class QueuesRepository {
  QueuesApi queuesApi;
  QueuesRepository(this.queuesApi);

  Future<QueueListResponse> getQueues() async =>
      QueueListResponse.fromJson((await queuesApi.getQueues()).data);

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

  Future<QueueModel> getQueue(int queueId) async {
    var response = await queuesApi.getQueue(queueId);
    return QueueModel.fromJson(response.data);
  }

  Future<void> completeTask({
    required int queueId,
    double? expenses,
  }) async {
    await queuesApi.completeTask(queueId, expenses: expenses);
    //return QueueModel.fromJson(response.data);
  }
}
