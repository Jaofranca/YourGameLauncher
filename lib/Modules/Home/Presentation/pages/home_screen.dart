import 'package:flutter/material.dart';

import '../widgets/add_game_dialog.dart';
import '../widgets/game_column.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
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
                      )),
                  const SizedBox(
                    height: 100,
                  ),
                  const Expanded(
                    child: GameColumn(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: Container(
                color: Colors.yellow,
              ),
            )
          ],
        ),
      ),
    );
  }
}
