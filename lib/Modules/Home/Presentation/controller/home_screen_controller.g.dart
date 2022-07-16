// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenController on _HomeScreenControllerBase, Store {
  late final _$gamesAtom =
      Atom(name: '_HomeScreenControllerBase.games', context: context);

  @override
  List<Game> get games {
    _$gamesAtom.reportRead();
    return super.games;
  }

  @override
  set games(List<Game> value) {
    _$gamesAtom.reportWrite(value, super.games, () {
      super.games = value;
    });
  }

  @override
  String toString() {
    return '''
games: ${games}
    ''';
  }
}
