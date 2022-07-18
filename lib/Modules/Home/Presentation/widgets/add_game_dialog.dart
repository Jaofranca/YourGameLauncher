import 'package:flutter/material.dart';

class AddGameDialog extends StatelessWidget {
  const AddGameDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add a Game"),
      content: SingleChildScrollView(
        child: ListBody(
          children: const [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Game exe',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Game Image',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Game icon',
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text("Add"),
        ),
      ],
    );
  }
}
