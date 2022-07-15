import 'dart:convert';

import '../../Domain/entities/game.dart';

class GameMapper {
  static Map<String, dynamic> toMap(Game game) {
    return <String, dynamic>{
      'gameName': game.gameName,
      'gameDescription': game.gameDescription,
      'gameImage': game.gameImage,
      'gameLocation': game.gameLocation,
    };
  }

  static fromMap(Map<String, dynamic> map) {
    return Game(
      gameName: map['gameName'] != null ? map['gameName'] as String : null,
      gameDescription: map['gameDescription'] != null
          ? map['gameDescription'] as String
          : null,
      gameImage: map['gameImage'] != null ? map['gameImage'] as String : null,
      gameLocation:
          map['gameLocation'] != null ? map['gameLocation'] as String : null,
    );
  }

  static String toJson(Game game) => json.encode(toMap(game));

  static fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
