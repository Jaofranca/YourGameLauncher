import '../../Domain/entities/game.dart';

class GameModel extends Game {
  GameModel(
      {required String gameName,
      required String gameDescription,
      required String gameImage,
      required String gameLocation})
      : super(
            gameName: gameName,
            gameDescription: gameDescription,
            gameImage: gameImage,
            gameLocation: gameLocation);

  factory GameModel.fromJson(Map<String, dynamic> json) {
    return GameModel(
      gameName: json['gameName'],
      gameDescription: json['gameDescription'],
      gameImage: json['gameImage'],
      gameLocation: json['gameLocation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'gameName': gameName,
      'gameDescription': gameDescription,
      'gameImage': gameImage,
      'gameLocation': gameLocation,
    };
  }
}
