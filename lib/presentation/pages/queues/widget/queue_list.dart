import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innoq/data/models/queue_info/queue_info.dart';

import '../../../presentation.dart';

class QueueList extends StatelessWidget {
  final List<QueueInfo> queues;
  const QueueList({
    super.key,
    required this.queues,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: QueueItem(
          queue: queues[index],
        ),
      ),
      itemCount: queues.length,
    );
  }
}

class QueueItem extends StatelessWidget {
  final QueueInfo queue;
  const QueueItem({
    required this.queue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        context.router.push(QueueRouter(
          id: queue.queueId,
          queueInfo: queue,
        ));
      },
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              child: queue.active ? null : const _FrozenIndicator(),
            ),
            _Avatar(color: colors[queue.queueColor]!),
            const SizedBox(width: 20),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TaskName(queue.queueName ?? '...'),
                const SizedBox(height: 2),
                _DutyName(queue.onDutyUserName),
              ],
            ),
            const Spacer(),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

class _FrozenIndicator extends StatelessWidget {
  const _FrozenIndicator();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        CupertinoIcons.snow,
        size: 14,
        color: Colors.grey,
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  final Color color;
  const _Avatar({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class _TaskName extends StatelessWidget {
  final String name;
  const _TaskName(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}

class _DutyName extends StatelessWidget {
  final String name;
  const _DutyName(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }
}
