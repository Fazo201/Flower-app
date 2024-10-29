import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
        body: const Column(
          children: [
            TabBar(
            tabs: [
              Text("Новые"),
              Text("Получены"),
            ],
            dividerHeight: 0,
            labelPadding: EdgeInsets.symmetric(vertical: 10),
            labelStyle: TextStyle(fontSize: 18),
            indicatorSize: TabBarIndicatorSize.tab,
          ),
             Expanded(
               child: TabBarView(children: [
                Center(
                  child: Text("OrderScreen1"),
                ),
                Center(
                  child: Text("OrderScreen2"),
                ),
                           ]),
             ),
          ],
        ),
      ),
    );
  }
}
