import 'package:get_it/get_it.dart';
import 'package:your_healthy/core/hive_config/hive_config.dart';
import 'package:your_healthy/domain/repositories/local_repository.dart';
import 'package:your_healthy/utils/share_preference_utils.dart';

final sl = GetIt.I;

void initLocator() {
  sl.registerLazySingleton<HiveConfig>(() => HiveConfig());
  sl.registerLazySingleton<SharePreferenceManage>(
      () => SharePreferenceManage());
  sl.registerLazySingleton<LocalRepository>(
      () => LocalRepository(sl<HiveConfig>(), sl<SharePreferenceManage>()));
}
