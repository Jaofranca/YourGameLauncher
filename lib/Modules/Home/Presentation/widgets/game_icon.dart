import 'package:flutter/material.dart';

class GameIcon extends StatelessWidget {
  const GameIcon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: const Icon(
          Icons.abc,
          color: Colors.white,
        ),
      ),
    );
  }
}
