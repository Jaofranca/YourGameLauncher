import 'package:flutter_modular/flutter_modular.dart';

import 'Data/datasources/game/game_local_data_source.dart';
import 'Data/repositoriesimpl/game_repository_impl.dart';
import 'Domain/usecases/add_game_usecase.dart';
import 'Domain/usecases/delete_game_usecase.dart';
import 'Domain/usecases/get_games_usecase.dart';
import 'Presentation/controller/home_screen_controller.dart';
import 'Presentation/pages/starting_screen.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => GameLocalDataSourceImpl()),
        Bind((i) => GameRepositoryImpl(localDataSource: i())),
        Bind((i) => AddGameUseCaseImpl(gameRepository: i())),
        Bind((i) => GetGamesUseCaseImpl(gameRepository: i())),
        Bind((i) => DeleteGameUseCaseImpl(gameRepository: i()))
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const StartingPage()),
      ];
}
