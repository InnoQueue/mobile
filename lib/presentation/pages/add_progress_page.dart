import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../presentation.dart';

class AddProgressPage extends StatefulWidget {
  final void Function(double) submitExpenses;

  const AddProgressPage({required this.submitExpenses, super.key});

  @override
  State<AddProgressPage> createState() => _AddProgressPageState();
}

class _AddProgressPageState extends State<AddProgressPage> {
  String expenses = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets.add(
            const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
          ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const Text(
            'Submit Expenses',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomTextField(
            hintText: 'input expenses',
            onChanged: (value) => setState(() => expenses = value),
          ),
          const SizedBox(height: 50),
          _SubmitButton(
            onPressed: !isValueValid
                ? null
                : () {
                    widget.submitExpenses(double.parse(expenses));
                    context.router.pop();
                  },
          ),
        ],
      ),
    );
  }

  bool get isValueValid {
    return double.tryParse(expenses) != null;
  }
}

class _SubmitButton extends StatelessWidget {
  final void Function()? onPressed;
  const _SubmitButton({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.grey.shade900,
          ),
          foregroundColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          elevation: const MaterialStatePropertyAll(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: const Text(
          'Submit',
        ),
      ),
    );
  }
}
