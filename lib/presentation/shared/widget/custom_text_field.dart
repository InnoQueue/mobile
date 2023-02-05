import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final void Function(String) onChanged;
  final void Function(String)? onSubmitted;
  final TextEditingController? controller;
  final TextAlign? textAlign;
  final TextInputType? keyBoardType;
  const CustomTextField({
    required this.onChanged,
    required this.hintText,
    this.onSubmitted,
    this.controller,
    this.textAlign,
    this.keyBoardType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey,
      controller: controller,
      keyboardType: keyBoardType ??
          const TextInputType.numberWithOptions(
            decimal: true,
          ),
      textAlign: textAlign ?? TextAlign.start,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
      ),
      onChanged: onChanged,
      onSubmitted: onSubmitted,
    );
  }
}
