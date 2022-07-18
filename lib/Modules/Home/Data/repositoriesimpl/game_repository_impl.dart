import 'package:dartz/dartz.dart';

import '../../Core/errors/exceptions.dart';
import '../../Core/errors/failures.dart';
import '../../Domain/entities/game.dart';
import '../../Domain/repositories/game/game_repository.dart';
import '../datasources/game/game_local_data_source.dart';
import '../datasources/game/game_remote_data_source.dart';

class GameRepositoryImpl implements GameRepository {
  final GameLocalDataSource localDataSource;
  // final GameRemoteDataSource remoteDataSource;
  GameRepositoryImpl({
    required this.localDataSource,
    // required this.remoteDataSource,
  });
  @override
  Future<Either<Failure, List<Game>>> getGames() async {
    try {
      List<Game> result = await localDataSource.getGames();
      return right(result);
    } on CacheException {
      return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> addGame(Game game) async {
    try {
      final result = await localDataSource.addGame(game);
      return right(result);
    } on CacheException {
      return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteGame(Game game) async {
    try {
      final result = await localDataSource.deleteGame(game);
      return right(result);
    } on CacheException {
      return left(CacheFailure());
    }
  }
}
