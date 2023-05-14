import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innoq/domain/domain.dart';
import 'package:innoq/presentation/presentation.dart';

void main() {
  testWidgets('Qr Export test', (tester) async {
    const QrExport qrExport = QrExport(
      queue: QueueModel(
        queueId: 0,
        queueName: 'queue',
        queueColor: 'RED',
        participants: [],
        trackExpenses: false,
        admin: false,
      ),
      invitation: InvitationModel(
        pinCode: '228228',
        qrCode: '',
      ),
    );

    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: qrExport,
      ),
    );
    await tester.pump();

    expect(find.text('228228'), findsOneWidget);
    expect(find.text('queue'), findsWidgets);
  });
}
