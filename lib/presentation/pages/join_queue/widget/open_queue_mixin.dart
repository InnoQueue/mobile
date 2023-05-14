import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../application/application.dart';
import '../../../../domain/repositories/analytics_repository/analytics_repository_impl.dart';
import '../../../../data/data.dart';
import '../../../../domain/domain.dart';
import '../../../presentation.dart';

mixin OpenQueueMixin<T extends StatefulWidget> on State<T> {
  void openQueue(QueueModel queue) async {
    if (mounted) {
      await context.router.replace(
        QueueRouter(
          id: queue.queueId,
          queueInfo: QueueInfo(
            queueId: queue.queueId,
            queueName: queue.queueName,
            queueColor: queue.queueColor,
            onDutyUserName: queue.participants
                .firstWhere((participant) => participant.onDuty)
                .userName,
            active: queue.participants
                .firstWhere((participant) =>
                    participant.userId ==
                    getIt.get<UserRepository>().getUser()?.userId)
                .active,
          ),
        ),
      );
      getIt.get<QueuesBloc>().add(const QueuesEvent.loadData());
      getIt.get<AnalyticsRepository>().logJoinQueue(queue.queueId);
    }
  }
}
