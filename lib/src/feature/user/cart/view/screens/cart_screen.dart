import 'dart:developer';

import 'package:flower_app/src/core/routes/app_route_names.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flower_app/src/feature/user/cart/bloc/cart_bloc.dart';
import 'package:flower_app/src/feature/user/cart/view/widgets/custom_cart_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    log("BUILD");
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Корзина"),
            elevation: 2,
            leading: CustomIconButton(
              onPressed: () => context.pop(),
              child: const Icon(CupertinoIcons.left_chevron),
            ),
            actions: [
              CustomIconButton(
                onPressed: () => context.go("${AppRouteNames.home}${AppRouteNames.cart}/${AppRouteNames.order}"),
                child: Image.asset(
                  "assets/icons/shop_active_icon.png",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final product = state.productList[index];
              return CustomCartCard(
                discountedPrice: "${product.discountedPrice! * product.count!} сум  ",
                price: "${product.price! * product.count!} сум",
                unitPrice: "${product.discountedPrice} сум/шт",
                name: product.name ?? "",
                description: product.description ?? "",
                imageUrl: product.image!,
                heightImage: "Высота: ${product.size?.heigt ?? ""}",
                widthImage: "Ширина: ${product.size?.width ?? ""}",
                count: product.count.toString(),
                // increment: () => context.read<CartBloc>().add(CartEvent.increment(index)),
                increment: ()=> context.read<CartBloc>().add(CartEvent.increment(index)),
                decrement: () => context.read<CartBloc>().add(CartEvent.decrement(index)),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return 10.verticalSpace;
            },
            itemCount: state.productList.length,
          ),
          bottomNavigationBar: Material(
            elevation: 15,
            child: ListTile(
              title: Text(
                "${state.totalCost} сум",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: MaterialButton(
                onPressed: () {},
                height: 38.h,
                color: Colors.blue.shade700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Оформить",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
