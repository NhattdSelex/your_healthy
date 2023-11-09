import 'package:hive/hive.dart';
import 'package:your_healthy/core/hive_config/hive_constants.dart';

part 'blood_pressure_model.g.dart';

@HiveType(typeId: HiveConstants.bloodPressure)
class BloodPressureModel extends HiveObject {
  @override
  @HiveField(0)
  String? key;
  @HiveField(1)
  int? systolic;
  @HiveField(3)
  int? diastolic;
  @HiveField(4)
  int? type;
  @HiveField(5)
  int? dateTime;

  BloodPressureModel({
    this.key,
    this.dateTime,
    this.systolic,
    this.diastolic,
    this.type,
  });
}
