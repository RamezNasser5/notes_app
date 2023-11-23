import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Center(
              child: Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          )),
        ),
      ),
    );
  }
}
