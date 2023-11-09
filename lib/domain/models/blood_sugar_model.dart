import 'package:hive/hive.dart';
import 'package:your_healthy/core/hive_config/hive_constants.dart';

part 'blood_sugar_model.g.dart';

@HiveType(typeId: HiveConstants.bloodSugar)
class BloodSugarModel extends HiveObject {
  @override
  @HiveField(0)
  String? key;
  @HiveField(1)
  String? stateCode;
  @HiveField(2)
  double? measure;
  @HiveField(3)
  String? unit;
  @HiveField(4)
  String? infoCode;
  @HiveField(5)
  String? dateTime;

  BloodSugarModel({
    this.key,
    this.stateCode,
    this.measure,
    this.unit,
    this.infoCode,
    this.dateTime,
  });
}
