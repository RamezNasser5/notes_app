import 'package:flutter/material.dart';

class NoteBodyContainerRow extends StatelessWidget {
  const NoteBodyContainerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Flutter Tips',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.delete,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
