import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Flutter tips',
        style: TextStyle(fontSize: 26, color: Colors.black),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Text(
          'Build your career with Ramez Nasser',
          style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.5)),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.delete,
          color: Colors.black,
          size: 28,
        ),
      ),
    );
  }
}
