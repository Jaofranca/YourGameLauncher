import 'package:flutter/material.dart';
import 'package:your_game_launcher/Modules/Home/Presentation/widgets/add_game_dialog.dart';

class AddGameButton extends StatelessWidget {
  const AddGameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AddGameDialog();
                });
          },
        ),
      ),
    );
  }
}
