import 'package:flutter/material.dart';
import 'package:your_healthy/presentation/ui/widgets/base_appbar.dart';

class AppContainer extends StatelessWidget {
  const AppContainer(
      {super.key,
      this.onWillPop,
      this.screenName,
      this.child,
      this.bottomNavigationBar,
      this.resizeToAvoidBottomInsert,
      this.appBar,
      this.background,
      this.floatingActionButton});

  final Future<bool> Function()? onWillPop;
  final String? screenName;
  final Widget? child;
  final Widget? bottomNavigationBar;
  final bool? resizeToAvoidBottomInsert;
  final PreferredSizeWidget? appBar;
  final Widget? background;
  final Widget? floatingActionButton;

  AppContainer.detailScreen({
    super.key,
    this.onWillPop,
    this.screenName,
    this.child,
    this.bottomNavigationBar,
    this.resizeToAvoidBottomInsert,
    this.background,
    this.floatingActionButton,
  }) : appBar = BaseAppBar.detail(
          detailScreen: screenName,
        );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: onWillPop,
        child: Scaffold(
          resizeToAvoidBottomInset: resizeToAvoidBottomInsert,
          appBar: appBar,
          floatingActionButton: floatingActionButton,
          bottomNavigationBar: bottomNavigationBar,
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: child,
          ),
        ));
  }
}
