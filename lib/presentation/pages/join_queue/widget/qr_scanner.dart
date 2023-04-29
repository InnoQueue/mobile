import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:innoq/domain/domain.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../../application/application.dart';
import '../../../presentation.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> with OpenQueueMixin {
  AnimationController? animationController;
  final GlobalKey<State<QRView>> _qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Shakeable(
      onControllerCreated: (controller) {
        animationController = controller;
      },
      child: Container(
        height: 200,
        width: 200,
        padding: const EdgeInsets.all(10),
        child: QRView(
          key: _qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
            borderRadius: 10,
            cutOutSize: 150,
            borderLength: 20,
            overlayColor: Colors.black.withOpacity(0.3),
            borderColor: Colors.white,
          ),
        ),
      ),
    );
  }

  bool _qrCodeScanned = false;

  Barcode? lastbarcode;
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      if (scanData.code == lastbarcode?.code) return;

      lastbarcode = scanData;
      if (scanData.code != null && !_qrCodeScanned) {
        _qrCodeScanned = false;
        final QueueModel? queue = await getIt.get<QueuesRepository>().joinQueue(
              qrCode: scanData.code,
            );
        if (queue != null) {
          openQueue(queue);
        } else {
          animationController?.forward();
          HapticFeedback.mediumImpact();
          _qrCodeScanned = false;
        }
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
