import 'package:flutter/material.dart';
import 'package:your_healthy/gen/assets.gen.dart';
import 'package:your_healthy/presentation/ui/screens/home/home_screen.dart';
import 'package:your_healthy/presentation/ui/widgets/app_container.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int indexTab = 0;

  void changeTab(int index) {
    setState(() {
      indexTab = index;
    });
  }

  final List<Widget> listScreen = const [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: indexTab,
        onTap: changeTab,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Assets.icons.home
                  .image(height: kBottomNavigationBarHeight - 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Assets.icons.schedule
                  .image(height: kBottomNavigationBarHeight - 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Assets.icons.insight
                  .image(height: kBottomNavigationBarHeight - 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Assets.icons.settings
                  .image(height: kBottomNavigationBarHeight - 30),
              label: ''),
        ],
      ),
      child: listScreen[indexTab],
    );
  }
}
