import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../application/application.dart';
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
      getIt // coverage:ignore-line
          .get<AnalyticsRepository>() // coverage:ignore-line
          .logJoinQueue(queue.queueId); // coverage:ignore-line
    }
  }
}
