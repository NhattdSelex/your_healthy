import 'package:your_healthy/core/hive_config/hive_constants.dart';
import 'package:your_healthy/domain/models/bmi_model.dart';
import 'package:your_healthy/utils/share_preference_utils.dart';

class LocalRepository {
  final HiveConfig _hiveConfig;
  final SharePreferenceManage _sharePreferenceManage;

  LocalRepository(this._hiveConfig, this._sharePreferenceManage);

  Future saveBMIModel(BMIModel bmi) async {
    await _hiveConfig.bmiBox.add(bmi);
  }
}
