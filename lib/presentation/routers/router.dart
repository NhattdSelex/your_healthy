import 'package:go_router/go_router.dart';
import 'package:your_healthy/presentation/ui/screens/main_screen.dart';

final class RouterUrl {
  RouterUrl._();

  static const home = '/';
}

final routerConfig = GoRouter(routes: [
  GoRoute(
    path: RouterUrl.home,
    builder: (context, state) => const MainScreen(),
  )
]);
