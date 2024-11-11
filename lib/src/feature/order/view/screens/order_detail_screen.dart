import 'dart:developer';

import 'package:flower_app/setup.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flower_app/src/data/entity/order_model.dart';
import 'package:flower_app/src/feature/order/bloc/order_bloc.dart';
import 'package:flower_app/src/feature/order/view/widgets/cutom_order_detail_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key, required this.order});
  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(order.name ?? ""),
              subtitle: Text(order.phoneNumber ?? ""),
            ),
            elevation: 2,
            leading: CustomIconButton(
              onPressed: () => context.pop(),
              child: const Icon(CupertinoIcons.left_chevron),
            ),
            actions: [
              if (isAdmin)
                CustomIconButton(
                  onPressed: () async {
                    final Uri url = Uri(scheme: 'tel', path: order.phoneNumber);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      log('launchUrl error: $url');
                    }
                  },
                  child: const Icon(CupertinoIcons.phone, color: Colors.green),
                ),
              if (isAdmin&&order.confirm!=true)
                CustomIconButton(
                  onPressed: () => _confirmDialog(context, order),
                  child: const Icon(CupertinoIcons.checkmark_seal_fill, color: Colors.green),
                ),
            ],
          ),
          body: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 5),
            itemBuilder: (context, index) {
              return CustomOrderDetailCard(model: order.flowerModel![index]);
            },
            separatorBuilder: (context, index) {
              return 10.verticalSpace;
            },
            itemCount: order.flowerModel?.length ?? 0,
          ),
        );
  }
}

void _confirmDialog(BuildContext context, OrderModel order) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Подтвердить"),
        content: const Text("Вы действительно хотите подтвердить? Вы уже выдали покупателю этот заказ?"),
        actions: [
          MaterialButton(
            onPressed: () => context.pop(),
            child: const Text('Отмена'),
          ),
          MaterialButton(
            onPressed: () {
              context.read<OrderBloc>().add(OrderEvent.updateOrder(order.copyWith(confirm: true)));
              context.pop();
              context.pop();
            },
            child: const Text("Подтвердить"),
          ),
        ],
      );
    },
  );
}
