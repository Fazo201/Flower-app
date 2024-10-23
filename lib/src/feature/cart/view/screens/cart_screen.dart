import 'dart:developer';

import 'package:flower_app/src/core/widget/custom_appbar.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flower_app/src/feature/cart/bloc/cart_bloc.dart';
import 'package:flower_app/src/feature/cart/view/widgets/custom_cart_card.dart';
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
          appBar: CustomAppBar(
            title: const Text("Корзина"),
            leading: CustomIconButton(
              onPressed: () => context.pop(),
              child: const Icon(CupertinoIcons.arrow_left),
            ),
            action: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CustomIconButton(
                onPressed: () {},
                child: Image.asset(
                  "assets/icons/shop_active_icon.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final products = state.productList[index];
              return CustomCartCard(
                discountedPrice: "${products.discountedPrice! * products.count!} сум  ",
                price: "${products.price! * products.count!} сум",
                unitPrice: "${products.discountedPrice} сум/шт",
                name: products.name ?? "",
                description: products.description ?? "",
                imageUrl: products.image!,
                heightImage: "Высота: ${products.size?.heigt ?? ""}",
                widthImage: "Ширина: ${products.size?.width ?? ""}",
                count: products.count.toString(),
                increment: () => context.read<CartBloc>().add(CartEvent.increment(index)),
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
