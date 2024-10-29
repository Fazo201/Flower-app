import 'dart:developer';

import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/core/routes/app_route_names.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/feature/user/cart/bloc/cart_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({super.key, this.model});
  final FlowerModel? model;
  @override
  Widget build(BuildContext context) {
    log(model!.count.toString());
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final isCart = state.productList.any((product)=>product.id==model?.id);
        log(isCart.toString());
        return Scaffold(
          appBar: AppBar(
            leading: CustomIconButton(
              onPressed: () => context.pop(),
              child: const Icon(CupertinoIcons.left_chevron),
            ),
          ),
          body: Padding(
            padding: REdgeInsets.symmetric(horizontal: context.mediaQuery.size.width * 0.03),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.verticalSpace,
                  LayoutBuilder(
                    builder: (context, constraints) {
                      double width = constraints.maxWidth;
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: SizedBox(
                          height: width,
                          width: width,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              image: DecorationImage(
                                image: model?.image != null ? NetworkImage(model!.image!) : const AssetImage("assets/images/no_image.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  12.verticalSpace,
                  Text(
                    model?.name ?? "",
                    style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  10.verticalSpace,
                  Text(model?.description ?? ""),
                  18.verticalSpace,
                  Text(
                    "О товаре",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  10.verticalSpace,
                  Text(model?.aboutTheProduct ?? ""),
                  Text("Высота: ${model?.size?.heigt ?? ""}"),
                  Text("Ширина: ${model?.size?.width ?? ""}"),
                  20.verticalSpace,
                ],
              ),
            ),
          ),
          bottomNavigationBar: Material(
            elevation: 15,
            child: ListTile(
              title: Text(
                "${model?.discountedPrice} сум",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "${model?.price} сум",
                style: const TextStyle(decoration: TextDecoration.lineThrough),
              ),
              trailing: MaterialButton(
                onPressed: () {
                  if (isCart) {
                    context.push("${AppRouteNames.home}${AppRouteNames.homeDetail}/${AppRouteNames.cart}");
                  }else{
                    context.read<CartBloc>().add(CartEvent.addToCart(model!));
                  }
                },
                color: (!isCart) ? Colors.blue.shade700:null,
                height: 48.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: (isCart) ? const BorderSide(): BorderSide.none
                ),
                child: isCart ? const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag_outlined),
                    Text("Перейти"),
                  ],
                ):const Text(
                  "В корзину",
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
