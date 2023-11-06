part of '../home_screen.dart';

final class _ButtonClick extends StatelessWidget {
  const _ButtonClick(this.background, this.functionName, this.icon);
  final Color? background;
  final String? functionName;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return AppButtonRounded(
      padding: const EdgeInsets.all(16),
      background: background,
      radius: 20,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: icon,
          ),
          SizedBox(
            width: 120,
            child: Center(
              child: Text(
                functionName ?? '',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
