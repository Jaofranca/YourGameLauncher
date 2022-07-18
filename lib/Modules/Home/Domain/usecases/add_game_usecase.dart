import 'package:dartz/dartz.dart';
import 'package:your_game_launcher/Modules/Home/Domain/repositories/game/game_repository.dart';

import '../../Core/errors/failures.dart';
import '../entities/game.dart';

abstract class AddGameUseCase {
  Future<Either<Failure, void>> call(Game game);
}

class AddGameUseCaseImpl implements AddGameUseCase {
  final GameRepository gameRepository;
  AddGameUseCaseImpl({required this.gameRepository});

  @override
  Future<Either<Failure, void>> call(Game game) async {
    return await gameRepository.addGame(game);
  }
}
