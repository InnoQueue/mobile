import '../../../data/data.dart';
import '../../domain.dart';

export 'queues_repository_impl.dart';
export 'mock_queues_repositpry_impl.dart';

abstract class QueuesRepository {
  QueuesApi queuesApi;
  QueuesRepository(this.queuesApi);

  Future<QueueListResponse> getQueues();

  Future<void> createQueue({
    required String name,
    required String color,
    required bool trackExpenses,
  });

  Future<List<TaskModel>> getTasks();

  Future<void> deleteQueue(int queueId);

  Future<void> freezeQueue(int queueId);

  Future<void> unfreezeQueue(int queueId);

  Future<void> editQueue({
    required int queueId,
    required String name,
    required String color,
    required List<int> participantIds,
    required bool trackExpenses,
  });

  Future<QueueModel> getQueue(int queueId);

  Future<void> completeTask({
    required int queueId,
    double? expenses,
  });

  Future<void> skipTask(int queueId);

  Future<void> shakeUser(int queueId);
}
