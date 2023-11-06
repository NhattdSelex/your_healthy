import 'package:hive/hive.dart';
import 'package:your_healthy/core/hive_config/hive_config.dart';

part 'bmi_model.g.dart';

@HiveType(typeId: HiveConstants.bmiModel)
class BMIModel extends HiveObject {
  @override
  @HiveField(0)
  String? key;
  @HiveField(1)
  double? weight; //unit is kg
  @HiveField(2)
  int? weightUnitId;
  @HiveField(3)
  int? typeId;
  @HiveField(4)
  int? dateTime;
  @HiveField(5)
  int? age;
  @HiveField(6)
  double? height; //unit is m
  @HiveField(7)
  int? heightUnitId;
  @HiveField(8)
  String? gender;
  @HiveField(9)
  int? bmi;
  BMIModel({
    this.key,
    this.weight,
    this.weightUnitId,
    this.typeId,
    this.dateTime,
    this.age,
    this.height,
    this.heightUnitId,
    this.gender,
    this.bmi,
  });
}
