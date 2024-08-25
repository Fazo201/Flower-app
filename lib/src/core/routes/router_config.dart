import "package:flower_app/src/core/routes/app_route_names.dart";
import "package:flower_app/src/feature/auth/view/screens/auth_screen.dart";
import "package:flower_app/src/feature/home/view/home_screen.dart";
import "package:flutter/cupertino.dart";
import "package:go_router/go_router.dart";

@immutable
final class RouterConfigService {
  const RouterConfigService._();

  static final GoRouter router = GoRouter(
    initialLocation: AppRouteNames.auth,
    routes: [
      GoRoute(
        path: AppRouteNames.auth,
        pageBuilder: (BuildContext context, GoRouterState state) => _customNavigatorTransitionAnimation(context, state, const AuthScreen()),
      ),
      GoRoute(
        path: AppRouteNames.home,
        pageBuilder: (BuildContext context, GoRouterState state) => _customNavigatorTransitionAnimation(context, state, const HomeScreen()),
      ),
    ],
  );

  static Page<dynamic> _customNavigatorTransitionAnimation(
    BuildContext context,
    GoRouterState state,
    Widget child,
  ) =>
      CustomTransitionPage<Object>(
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) {
          final tween = Tween<double>(begin: 0.6, end: 1);
          final sizeAnimation = animation.drive(tween);
          return SizeTransition(
            sizeFactor: sizeAnimation,
            child: child,
          );
        },
        child: child,
      );
}
