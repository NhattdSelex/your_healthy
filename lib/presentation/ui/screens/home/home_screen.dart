import 'package:flutter/material.dart';
import 'package:your_healthy/gen/assets.gen.dart';
import 'package:your_healthy/presentation/ui/widgets/app_button.dart';
import 'package:your_healthy/presentation/ui/widgets/app_container.dart';
import 'package:your_healthy/presentation/ui/widgets/base_appbar.dart';

part 'widgets/button_click.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<({Widget icon, String functionName, Color background})>
        infoButton = [
      (
        icon: const Icon(Icons.abc),
        functionName: "Cân nặng & BMI",
        background: Colors.redAccent
      ),
      (
        icon: const Icon(Icons.abc),
        functionName: "Đường máu",
        background: Colors.redAccent
      ),
      (
        icon: const Icon(Icons.abc),
        functionName: "Huyết áp",
        background: Colors.redAccent
      ),
      (
        icon: const Icon(Icons.abc),
        functionName: "QR quét",
        background: Colors.redAccent
      ),
    ];

    return AppContainer(
      appBar: BaseAppBar.main(
        previousWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Assets.icons.avatar.image(),
          ),
        ),
        action: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: AppButton(
              child: Assets.icons.bell.image(),
            ),
          )
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: RichText(
                text: TextSpan(
                    text: "Hello",
                    style: Theme.of(context).textTheme.titleLarge,
                    children: [
                      TextSpan(
                          text: "\nsome name",
                          style: Theme.of(context).textTheme.titleLarge)
                    ]),
              ),
            ),
            AppButtonRounded(
              padding: const EdgeInsets.all(20),
              background: Colors.pinkAccent,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kiểm tra nhịp tim !',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Icon(Icons.heart_broken),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text(
                'Sức khỏe vàng!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                runSpacing: 20,
                runAlignment: WrapAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceAround,
                children: infoButton
                    .map((e) =>
                        _ButtonClick(e.background, e.functionName, e.icon))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
