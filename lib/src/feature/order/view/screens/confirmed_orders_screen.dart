import 'package:flower_app/src/core/routes/app_route_names.dart';
import 'package:flower_app/src/data/entity/order_model.dart';
import 'package:flower_app/src/feature/order/view/widgets/custom_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class ConfirmedOrdersScreen extends StatelessWidget {
  const ConfirmedOrdersScreen({super.key, required this.orderList});
  final List<OrderModel> orderList;

  @override
  Widget build(BuildContext context) {
    return orderList.isEmpty?Center(
        child: Lottie.asset(
          "assets/lotties/order_empty_lottie.json",
          fit: BoxFit.cover,
        ),
      ): ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 5),
      itemBuilder: (context, index) {
        final order = orderList[index];
        return CustomOrderCard(
          order: order,
          onTapCard: () => context.push("/${AppRouteNames.cart}/${AppRouteNames.order}/${AppRouteNames.orderDetail}",extra: order),
        );
      },
      separatorBuilder: (context, index) {
        return 10.verticalSpace;
      },
      itemCount: orderList.length,
    );
  }
}
