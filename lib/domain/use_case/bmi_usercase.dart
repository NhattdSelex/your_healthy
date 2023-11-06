import 'package:your_healthy/domain/models/bmi_model.dart';
import 'package:your_healthy/domain/repositories/local_repository.dart';

class BMIUsecase {
  final LocalRepository _localRepository;

  BMIUsecase(this._localRepository);

  Future saveBMI(BMIModel bmi) => _localRepository.saveBMIModel(bmi);
}
