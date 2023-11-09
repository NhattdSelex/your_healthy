import 'package:flutter/material.dart';
import 'package:your_healthy/presentation/ui/widgets/app_container.dart';

class BMIAndWeightScreen extends StatelessWidget {
  const BMIAndWeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer.detailScreen(
      screenName: "Weight & BMI",
    );
  }
}
