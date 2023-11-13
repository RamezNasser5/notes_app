import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine = 1});
  final String hint;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder customBorder([color]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: color ?? Colors.white));
}