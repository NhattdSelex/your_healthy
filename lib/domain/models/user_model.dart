import 'package:hive/hive.dart';
import 'package:your_healthy/core/hive_config/hive_constants.dart';

part 'user_model.g.dart';

@HiveType(typeId: HiveConstants.user)
class UserModel extends HiveObject {
  @HiveField(0)
  int? age;
  @HiveField(1)
  String? genderId;

  UserModel({this.age, this.genderId});
}
