import "package:flower_app/src/core/routes/app_route_names.dart";
import "package:flower_app/src/data/entity/flower_model.dart";
import "package:flower_app/src/feature/admin/admin_home/view/admin_home_screen.dart";
import "package:flower_app/src/feature/admin/admin_order/admin_order_screen.dart";
import "package:flower_app/src/feature/user/cart/view/screens/cart_screen.dart";
import "package:flower_app/src/feature/home/view/screens/home_detail_screen.dart";
import "package:flower_app/src/feature/home/view/screens/home_screen.dart";
import "package:flower_app/src/feature/user/order/order_screen.dart";
import "package:flutter/cupertino.dart";
import "package:go_router/go_router.dart";

@immutable
final class RouterConfigService {
  const RouterConfigService._();

  static final GoRouter router = GoRouter(
    initialLocation: AppRouteNames.home,
    routes: [
      GoRoute(
        path: AppRouteNames.home,
        pageBuilder: (BuildContext context, GoRouterState state) => _customNavigatorTransitionAnimation(context, state, const HomeScreen()),
        routes: [
          homeDetail,
          cart,
          adminHome,
        ],
      ),
    ],
  );

  static final GoRoute homeDetail = GoRoute(
    path: AppRouteNames.homeDetail,
    pageBuilder: (BuildContext context, GoRouterState state) {
      final model = state.extra as FlowerModel?;
      return _customNavigatorTransitionAnimation(context, state, HomeDetailScreen(model: model));
    },
    routes: [cart]
  );

  static final GoRoute cart = GoRoute(
    path: AppRouteNames.cart,
    pageBuilder: (BuildContext context, GoRouterState state) {
      return _customNavigatorTransitionAnimation(context, state, const CartScreen());
    },
    routes: [order],
  );

  static final GoRoute order = GoRoute(
    path: AppRouteNames.order,
    pageBuilder: (BuildContext context, GoRouterState state) {
      return _customNavigatorTransitionAnimation(context, state, const OrderScreen());
    },
  );

  static final GoRoute adminHome = GoRoute(
    path: AppRouteNames.adminHome,
    pageBuilder: (BuildContext context, GoRouterState state) {
      final model = state.extra as FlowerModel?;
      return _customNavigatorTransitionAnimation(context, state, AdminHomeScreen(model: model));
    },
    routes: [adminOrder],
  );

  static final GoRoute adminOrder = GoRoute(
    path: AppRouteNames.adminOrder,
    pageBuilder: (BuildContext context, GoRouterState state) {
      return _customNavigatorTransitionAnimation(context, state, const AdminOrderScreen());
    },
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
