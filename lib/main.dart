import 'package:flutter/material.dart';
import 'package:your_healthy/core/hive_config/hive_constants.dart';
import 'package:your_healthy/di/di.dart';
import 'package:your_healthy/utils/share_preference_utils.dart';

import 'presentation/routers/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initLocator();
  await sl<HiveConfig>().init();
  await sl<SharePreferenceManage>().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerConfig,
    );
  }
}
