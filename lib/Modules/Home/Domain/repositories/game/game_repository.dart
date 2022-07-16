import 'package:dartz/dartz.dart';

import '../../../Core/errors/failures.dart';
import '../../entities/game.dart';

abstract class GameRepository {
  Future<Either<Failure, List<Game>>> getGames();
  Future<Either<Failure, void>> addGame(Game game);
  Future<Either<Failure, void>> deleteGame(Game game);
}
