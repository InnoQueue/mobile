import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../../application/application.dart';
import '../../../domain/domain.dart';
import '../../presentation.dart';

class ShareQueuePage extends StatefulWidget {
  const ShareQueuePage({
    super.key,
    required this.queue,
  });

  final QueueModel queue;

  @override
  State<ShareQueuePage> createState() => _ShareQueuePageState();
}

class _ShareQueuePageState extends State<ShareQueuePage> {
  InvitationModel? invitation;
  final ScreenshotController screenshotController = ScreenshotController();

  @override
  void initState() {
    super.initState();

    getIt.get<QueuesRepository>().shareQueue(widget.queue.queueId).then(
          (invitation) => setState(
            () => this.invitation = invitation,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          QrWidget(
            queue: widget.queue,
            invitation: invitation,
          ),
          const SizedBox(height: 20),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: invitation == null ? 0 : 1,
            child: SizedBox(
              width: 240,
              child: CustomButton(
                onPressed: invitation == null ? null : shareImage,
                backgroundColor: Colors.green.shade300,
                text: 'Share',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void shareImage() async {
    final capturedImage = await screenshotController.captureFromWidget(
      QrExport(
        queue: widget.queue,
        invitation: invitation,
      ),
      delay: Duration.zero,
      pixelRatio: 2,
    );

    await Share.shareXFiles(
      [
        XFile.fromData(
          capturedImage,
          mimeType: 'jpeg',
          name: 'innoq',
        ),
      ],
      text: 'Join "${widget.queue.queueName}" on InnoQ!\n\n'
          'Temporary PIN: ${invitation!.pinCode}\n'
          'Temporary link: http://innoq.ru/join/${invitation!.qrCode}',
    );
  }
}
