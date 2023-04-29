import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:innoq/presentation/pages/join_queue/join_queue.dart';

import '../../../application/application.dart';
import '../../../domain/domain.dart';

class JoinInProressPage extends StatefulWidget {
  const JoinInProressPage({
    super.key,
    @PathParam('qrCode') required this.qrCode,
  });

  final String qrCode;

  @override
  State<JoinInProressPage> createState() => _JoinInProressPageState();
}

class _JoinInProressPageState extends State<JoinInProressPage>
    with OpenQueueMixin {
  @override
  void initState() {
    super.initState();
    _checkQr();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
=======
      height: 70,
      width: 70,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
>>>>>>> main
        color: Colors.white,
      ),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void _checkQr() async {
    final QueueModel? queue = await getIt.get<QueuesRepository>().joinQueue(
          qrCode: widget.qrCode,
        );

    if (queue != null) {
      openQueue(queue);
    } else {
      HapticFeedback.lightImpact();
      if (mounted) {
        context.router.pop();
      }
    }
  }
}
