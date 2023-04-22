import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../application/application.dart';
import '../../../../domain/domain.dart';
import '../../../presentation.dart';

class PinCodeField extends StatefulWidget {
  const PinCodeField({super.key});

  @override
  State<PinCodeField> createState() => _PinCodeFieldState();
}

class _PinCodeFieldState extends State<PinCodeField> with OpenQueueMixin {
  StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();
  AnimationController? animationController;
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return Shakeable(
      onControllerCreated: (controller) {
        animationController = controller;
      },
      child: SizedBox(
        width: 180,
        child: PinCodeTextField(
          length: 6,
          obscureText: false,
          animationType: AnimationType.fade,
          keyboardType: TextInputType.number,
          enabled: enabled,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 30,
            fieldWidth: 25,
            activeFillColor: Colors.white,
            inactiveFillColor: Colors.white,
            selectedFillColor: Colors.white,
            activeColor: Colors.grey.shade700,
            inactiveColor: Colors.grey.shade700,
            disabledColor: Colors.grey.shade300,
            selectedColor: Colors.grey.shade700,
            errorBorderColor: colors['RED'],
            borderWidth: 1,
          ),
          errorAnimationController: errorController,
          cursorColor: Colors.black,
          cursorHeight: 20,
          cursorWidth: 1,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          onCompleted: _checkPin,
          enablePinAutofill: false,
          onChanged: (value) {},
          appContext: context,
        ),
      ),
    );
  }

  void _checkPin(String value) async {
    setState(() {
      enabled = false;
    });

    final QueueModel? queue = await getIt.get<QueuesRepository>().joinQueue(
          pinCode: value,
        );

    if (queue != null) {
      openQueue(queue);
    } else {
      setState(() {
        enabled = true;
      });

      animationController?.forward();
      HapticFeedback.mediumImpact();
    }
  }
}
