import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../data.dart';

@Singleton()
class QueuesApi {
  QueuesApi(this.baseApi);

  final BaseApi baseApi;
  Dio get dio => baseApi.dio;

  Future<Response> getQueues([QueueListRequest? request]) async =>
      await dio.get(
        '/queues',
        queryParameters: request?.toJson(),
      );

  Future<Response> getQueue(int queueId) async =>
      await dio.get('/queues/$queueId');

  Future<Response> getTasks() async => await dio.get('/queues/tasks');

  Future<Response> skipTask(int queueId) async => await dio.post(
        '/queues/$queueId/skip',
      );

  Future<Response> completeTasks({
    required int taskId,
    required double expenses,
  }) async =>
      await dio.post(
        '/queues/tasks/done',
        data: {
          'taskId': taskId,
          'expenses': expenses,
        },
      );

  Future<Response> shakeUser(int queueId) async =>
      await dio.post('/queues/$queueId/shake');

  Future<Response> completeTask(int queueId, {double? expenses}) async =>
      await dio.post('/queues/$queueId/complete', data: {
        'expenses': expenses,
      });

  Future<Response> getInvitation(int queueId) async =>
      await dio.get('/queues/ivite/$queueId');

  Future<Response> joinQueue({
    String? pinCode,
    String? qrCode,
  }) async {
    assert((pinCode == null) != (qrCode == null));
    return await dio.post('/queues/join', data: {
      'pinCode': pinCode,
      'qrCode': qrCode,
    });
  }

  Future<Response> deleteQueue(int queueId) async =>
      await dio.delete('/queues/$queueId');

  Future<Response> createQueue(CreateQueueRequest request) async {
    return await dio.post('/queues', data: request.toJson());
  }

  Future<Response> editQueue({
    required int queueId,
    required EditQueueRequest request,
  }) async =>
      await dio.patch('/queues/$queueId', data: request.toJson());

  Future<Response> freezeQueue(int queueId) async => await dio.post(
        '/queues/$queueId/activity',
        data: {'active': false},
      );

  Future<Response> unfreezeQueue(int queueId) async => await dio.post(
        '/queues/$queueId/activity',
        data: {'active': true},
      );
}
