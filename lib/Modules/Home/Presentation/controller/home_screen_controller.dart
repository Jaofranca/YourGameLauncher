import 'package:mobx/mobx.dart';
import '../../Domain/entities/game.dart';
import '../../Domain/usecases/add_game_usecase.dart';
import '../../Domain/usecases/delete_game_usecase.dart';
import '../../Domain/usecases/get_games_usecase.dart';

part 'home_screen_controller.g.dart';

class HomeScreenController = _HomeScreenControllerBase
    with _$HomeScreenController;

abstract class _HomeScreenControllerBase with Store {
  final AddGameUseCase _addGameUseCase;
  final GetGamesUseCase _getGamesUseCase;
  final DeleteGameUseCase _deleteGameUseCase;
  _HomeScreenControllerBase(
      this._addGameUseCase, this._deleteGameUseCase, this._getGamesUseCase);

  @observable
  List<Game> games = [];
}
