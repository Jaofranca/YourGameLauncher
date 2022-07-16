import 'package:hive/hive.dart';
import 'package:your_game_launcher/Modules/Home/Core/errors/failures.dart';

import '../../../Domain/entities/game.dart';
import '../../mappers/game_mapper.dart';

abstract class GameLocalDataSource {
  Future<List<Game>> getGames();
  Future<void> addGame(Game game);
  Future<void> deleteGame(Game game);
}

class GameLocalDataSourceImplementation implements GameLocalDataSource {
  @override
  Future<List<Game>> getGames() async {
    var games = Hive.box('games').values;
    if (games.isNotEmpty) {
      return List<Game>.from(
        games.map(
          (contact) {
            return GameMapper.fromMap(contact);
          },
        ),
      );
    } else {
      throw CacheFailure();
    }
  }

  @override
  Future<void> addGame(Game game) async {
    await Hive.box('games').put(game.id, GameMapper.toMap(game));
  }

  @override
  Future<void> deleteGame(Game game) async {
    await Hive.box('games').delete(game.id);
  }
}
