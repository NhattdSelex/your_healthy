import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:your_healthy/core/hive_config/hive_config.dart';
import 'package:your_healthy/domain/models/bmi_model.dart';

class HiveConfig {
  late Box<BMIModel> bmiBox;

  Future<void> init() async {
    final appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);

    //Handle bmi hive box
    Hive.registerAdapter(BMIModelAdapter());
    bmiBox = await Hive.openBox(HiveBox.bmiBox);
  }

  void dispose() {
    Hive.close();
  }
}
