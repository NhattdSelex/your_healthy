import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar._(this.previousWidget, this.detailScreen, this.action);
  final Widget? previousWidget;
  final String? detailScreen;
  final List<Widget>? action;

  const BaseAppBar.main({super.key, this.action, this.previousWidget})
      : detailScreen = null;

  const BaseAppBar.detail({super.key, this.detailScreen})
      : action = null,
        previousWidget = const Icon(Icons.arrow_back_ios_new);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(detailScreen ?? ''),
      centerTitle: true,
      leading: previousWidget,
      actions: action,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
