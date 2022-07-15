import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_module.dart';
import 'core/hive_initialization.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  hiveInitialization(
    onInitialized: () => runApp(
      ModularApp(
        module: AppModule(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Game Launcher',
      theme: ThemeData.light().copyWith(),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
