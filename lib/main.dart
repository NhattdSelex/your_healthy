import 'package:flutter/material.dart';
import 'package:your_healthy/di/di.dart';

import 'presentation/routers/router.dart';

void main() {
  initLocator();
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
