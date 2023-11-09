// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar._(
      this.previousWidget, this.detailScreen, this.action, this.tabBack);
  final Widget? previousWidget;
  final String? detailScreen;
  final List<Widget>? action;
  final VoidCallback? tabBack;

  const BaseAppBar.main(
      {super.key, this.action, this.previousWidget, this.tabBack})
      : detailScreen = null;

  const BaseAppBar.detail({super.key, this.detailScreen, this.tabBack})
      : action = null,
        previousWidget = const Icon(Icons.arrow_back_ios_new);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(detailScreen ?? ''),
      centerTitle: true,
      leading: GestureDetector(
          onTap: tabBack ?? Navigator.of(context).pop, child: previousWidget),
      actions: action,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
