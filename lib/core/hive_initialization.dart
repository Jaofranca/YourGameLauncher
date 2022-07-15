import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void hiveInitialization({required Function() onInitialized}) async {
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  await onInitialized();
}
