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
}
