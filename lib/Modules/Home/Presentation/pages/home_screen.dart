import 'package:flutter/material.dart';
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
                children: const [
                  Expanded(
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
