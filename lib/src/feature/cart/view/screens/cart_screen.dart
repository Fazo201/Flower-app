import 'dart:developer';

import 'package:flower_app/setup.dart';
import 'package:flower_app/src/core/routes/app_route_names.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flower_app/src/core/widget/custom_loading.dart';
import 'package:flower_app/src/data/entity/order_model.dart';
import 'package:flower_app/src/feature/order/bloc/order_bloc.dart';
import 'package:flower_app/src/feature/cart/bloc/cart_bloc.dart';
import 'package:flower_app/src/feature/cart/view/widgets/custom_cart_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController nameC = TextEditingController();
  final TextEditingController phoneNumberC = TextEditingController(text: "+998 ");
  final _formKey = GlobalKey<FormState>();
  late CartBloc cartBloc;
  late OrderBloc orderBloc;

  @override
  void initState() {
    cartBloc = context.read<CartBloc>();
    orderBloc = context.read<OrderBloc>();
    super.initState();
  }

  @override
  void dispose() {
    nameC.dispose();
    phoneNumberC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log("BUILD CartScreen");
    return BlocListener<OrderBloc, OrderState>(
      listener: (context, orderState) {
        log("OrderBlocListener");
        if (orderState.isAddedNewOrder) {
          log("orderState.isAddedNewOrder: ${orderState.isAddedNewOrder}");
          cartBloc.add(const CartEvent.clearAllCards());
          context.push("/${AppRouteNames.cart}/${AppRouteNames.order}");
        }
      },
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, cartState) {
          return Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  title: Text("Корзина${cartState.totalCount != 0 ? "(${cartState.totalCount})" : ""}"),
                  elevation: 2,
                  leading: CustomIconButton(
                    onPressed: () => context.pop(true),
                    child: const Icon(CupertinoIcons.left_chevron),
                  ),
                  actions: [
                    CustomIconButton(
                      onPressed: () => context.push("/${AppRouteNames.cart}/${AppRouteNames.order}"),
                      child: Image.asset(
                        "assets/icons/shop_active_icon.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                body: cartState.productList.isEmpty
                    ? Center(
                        child: Lottie.asset(
                          "assets/lotties/cart_empty_lottie.json",
                          fit: BoxFit.cover,
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        itemBuilder: (BuildContext context, int index) {
                          final product = cartState.productList[index];
                          return CustomCartCard(
                            model: product,
                            increment: () => cartBloc.add(CartEvent.increment(index)),
                            decrement: () => cartBloc.add(CartEvent.decrement(index)),
                            onTapCard: () => context.push("/${AppRouteNames.homeDetail}", extra: product),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return 10.verticalSpace;
                        },
                        itemCount: cartState.productList.length,
                      ),
                bottomNavigationBar: cartState.productList.isNotEmpty
                    ? Material(
                        elevation: 15,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                            title: Text(
                              "${cartState.totalCost} сум",
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            trailing: MaterialButton(
                              onPressed: () => _addToOrderDialog(),
                              height: 38.h,
                              color: Colors.blue.shade700,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Оформить",
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : null,
              ),
              CustomLoading(visible: context.watch<OrderBloc>().state.isLoading),
            ],
          );
        },
      ),
    );
  }

  void _addToOrderDialog() {
    nameC.text = name ?? "";
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Оставьте, пожалуйста, своё имя и номер телефона, чтобы мы могли связаться с вами. ☺️",
            style: TextStyle(fontSize: 12.sp),
          ),
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: nameC,
                  onChanged: (value) => _formKey.currentState!.validate(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Введите ваше имя";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Имя",
                    hintStyle: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  controller: phoneNumberC,
                  onChanged: (value) => _formKey.currentState!.validate(),
                  validator: (value) {
                    if (value!.length < 19) {
                      return "Введите полный номер телефона";
                    }
                    return null;
                  },
                  inputFormatters: [phoneFormat],
                  decoration: const InputDecoration(
                    hintText: "+998 ",
                    hintStyle: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
              ],
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Отмена'),
            ),
            MaterialButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final order = OrderModel(
                    name: nameC.text,
                    phoneNumber: phoneNumberC.text,
                    registrationDate: DateTime.now().toIso8601String(),
                    totalCount: cartBloc.state.totalCount,
                    totalCost: cartBloc.state.totalCost,
                    flowerModel: cartBloc.state.productList,
                  );
                  context.pop();
                  orderBloc.add(OrderEvent.addNewOrder(order));
                }
              },
              child: const Text("Оформить"),
            ),
          ],
        );
      },
    );
  }

  final phoneFormat = MaskTextInputFormatter(
    mask: '+998 (##) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: phoneNumber ?? "+998 ",
  );
}
