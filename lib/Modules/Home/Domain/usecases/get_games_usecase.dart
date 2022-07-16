import 'package:dartz/dartz.dart';
import 'package:your_game_launcher/Modules/Home/Domain/repositories/game/game_repository.dart';

import '../../Core/errors/failures.dart';
import '../entities/game.dart';

abstract class GetGamesUseCase {
  Future<Either<Failure, List<Game>>> call();
}

class GetGamesUseCaseImplementation implements GetGamesUseCase {
  final GameRepository gameRepository;
  GetGamesUseCaseImplementation(this.gameRepository);
  @override
  Future<Either<Failure, List<Game>>> call() async {
    return await gameRepository.getGames();
  }
}
