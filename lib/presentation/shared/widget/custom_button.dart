import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  const CustomButton({
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
    this.foregroundColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            backgroundColor,
          ),
          foregroundColor: MaterialStatePropertyAll(
            foregroundColor,
          ),
          elevation: const MaterialStatePropertyAll(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
