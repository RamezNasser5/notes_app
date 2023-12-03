import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff62FCD7);
const kNoteBox = 'note_box';
const List<Color> kColor = [
  Color(0xFF3498db),
  Color(0xFF2ecc71),
  Color(0xFFe74c3c),
  Color(0xFFf39c12),
  Color(0xFF1abc9c),
  Color(0xFFe67e22),
  Color.fromARGB(255, 82, 87, 88),
  Color(0xFF2980b9),
  Color(0xFFd35400),
  Color(0xFF8e44ad),
];
void showSuccessSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 2),
    backgroundColor: kPrimaryColor,
  );

  // Use ScaffoldMessenger to show SnackBar
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
