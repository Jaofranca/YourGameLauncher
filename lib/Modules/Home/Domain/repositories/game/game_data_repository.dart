import 'package:dartz/dartz.dart';

import '../../../Core/errors/failures.dart';

abstract class GameDataRepository {
  Future<Either<Failure, String>> getGameDescription(String gameName);
  Future<Either<Failure, String>> getGameImage(String gameName);
}
