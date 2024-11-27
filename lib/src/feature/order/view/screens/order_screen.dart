import 'dart:developer';

import 'package:flower_app/setup.dart';
import 'package:flower_app/src/core/enums/bloc_status.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flower_app/src/core/widget/custom_loading.dart';
import 'package:flower_app/src/feature/order/bloc/order_bloc.dart';
import 'package:flower_app/src/feature/order/view/screens/confirmed_orders_screen.dart';
import 'package:flower_app/src/feature/order/view/screens/unconfirmed_orders_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log("BUILD OrderScreen");
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        final orderList = state.orderList;
        final confirmedOrders = orderList.where((order) => order.confirm == true).toList();
        final unconfirmedOrders = orderList.where((order) => order.confirm != true).toList();
        return Stack(
          children: [
            DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text("Мои заказы"),
                  elevation: 2,
                  leading: CustomIconButton(
                    onPressed: () => context.pop(),
                    child: const Icon(CupertinoIcons.left_chevron),
                  ),
                ),
                body: Column(
                  children: [
                    TabBar(
                      tabs: [
                        const Text("Новые"),
                        Text(isAdmin ? "Выданы" : "Получены"),
                      ],
                      dividerHeight: 0,
                      labelPadding: const EdgeInsets.symmetric(vertical: 10),
                      labelStyle: const TextStyle(fontSize: 18),
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          UnconfirmedOrdersScreen(orderList: unconfirmedOrders),
                          ConfirmedOrdersScreen(orderList: confirmedOrders),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomLoading(visible: state.status==BlocStatus.loading),
          ],
        );
      },
    );
  }
}
