import 'package:hive/hive.dart';

import '../../../Domain/entities/game.dart';
import '../../mappers/game_mapper.dart';

abstract class GameLocalDataSource {
  Future<List<Game>> getGames();
  Future<void> addGame(Game game);
}

class GameLocalDataSourceImplementation implements GameLocalDataSource {
  @override
  Future<void> addGame(Game game) async {
    await Hive.box('games').put(game.id, GameMapper.toMap(game));
  }

  @override
  Future<List<Game>> getGames() async {
    // try{
    //   await Hive.box(name)
    // }
    throw UnimplementedError();
  }
}
