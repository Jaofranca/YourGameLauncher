import 'package:dartz/dartz.dart';
import 'package:your_game_launcher/Modules/Home/Domain/repositories/game/game_repository.dart';

import '../../Core/errors/failures.dart';
import '../entities/game.dart';

abstract class DeleteGameUseCase {
  Future<Either<Failure, void>> call(Game game);
}

class DeleteGameUseCaseImplementation implements DeleteGameUseCase {
  final GameRepository gameRepository;
  DeleteGameUseCaseImplementation(this.gameRepository);
  @override
  Future<Either<Failure, void>> call(game) async {
    return await gameRepository.deleteGame(game);
  }
}
