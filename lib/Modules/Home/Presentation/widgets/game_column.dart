import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
        clipBehavior: Clip.none,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return const GameIcon();
        },
        itemCount: 20,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
