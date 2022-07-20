import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:your_game_launcher/Modules/Home/Presentation/widgets/add_game_button.dart';

import 'add_game_dialog.dart';
import 'game_icon.dart';

class GameColumn extends StatelessWidget {
  const GameColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: ListView.builder(
        clipBehavior: Clip.antiAlias,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return const AddGameButton();
          } else {
            return const GameIcon();
          }
        },
        itemCount: 20,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
