import 'package:dartz/dartz.dart';

import '../../Core/errors/failures.dart';
import '../entities/game.dart';
import '../repositories/game/game_repository.dart';

class GetGamesUseCase {
  final GameRepository gameRepository;
  GetGamesUseCase(this.gameRepository);

  Future<Either<Failure, List<Game>>> call() async {
    return await gameRepository.getGames();
  }
}
