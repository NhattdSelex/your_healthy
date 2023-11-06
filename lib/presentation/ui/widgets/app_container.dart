import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  const AppContainer(
      {super.key,
      this.onWillPop,
      this.child,
      this.bottomNavigationBar,
      this.resizeToAvoidBottomInsert,
      this.appBar,
      this.background,
      this.floatingActionButton});

  final Future<bool> Function()? onWillPop;
  final Widget? child;
  final Widget? bottomNavigationBar;
  final bool? resizeToAvoidBottomInsert;
  final PreferredSizeWidget? appBar;
  final Widget? background;
  final Widget? floatingActionButton;

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
