import 'package:flutter/widgets.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.ontap, this.child});
  final VoidCallback? ontap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: child,
    );
  }
}

class AppButtonRounded extends StatelessWidget {
  const AppButtonRounded(
      {super.key,
      this.onTap,
      this.padding,
      this.margin,
      this.child,
      this.background,
      this.boxShadow,
      this.radius});

  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color? background;
  final List<BoxShadow>? boxShadow;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 16),
          boxShadow: boxShadow,
          color: background,
        ),
        padding: padding,
        margin: margin,
        child: child,
      ),
    );
  }
}
