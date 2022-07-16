import 'package:flutter_modular/flutter_modular.dart';

import 'Presentation/pages/starting_screen.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const StartingPage()),
      ];
}
