import 'dart:developer';

import 'package:add_to_cart_animation/add_to_cart_animation.dart';
import 'package:flower_app/setup.dart';
import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/core/routes/app_route_names.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/feature/home/view/widgets/custom_home_top_card.dart';
import 'package:flower_app/src/feature/cart/bloc/cart_bloc.dart';
import 'package:flower_app/src/feature/home/bloc/home_bloc.dart';
import 'package:flower_app/src/feature/home/view/widgets/custom_home_card.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final refreshController = RefreshController();
  GlobalKey<CartIconKey> cartKey = GlobalKey<CartIconKey>();
  late Function(GlobalKey) runAddToCartAnimation;
  late final HomeBloc bloc;
  late final CartBloc cartBloc;

  @override
  void initState() {
    log("initState HomeScreen");
    bloc = context.read<HomeBloc>();
    cartBloc = context.read<CartBloc>();
    super.initState();
  }

  @override
  void dispose() {
    refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log("BUILD HomeScreen");
    return AddToCartAnimation(
      cartKey: cartKey,
      dragAnimation: const DragToCartAnimationOptions(
        rotation: true,
        curve: Curves.linear,
      ),
      jumpAnimation: const JumpAnimationOptions(
        curve: Curves.linear,
        duration: Duration.zero,
      ),
      createAddToCartAnimation: (runAddToCartAnimation) {
        this.runAddToCartAnimation = runAddToCartAnimation;
      },
      child: BlocConsumer<HomeBloc, HomeState>(
        bloc: bloc,
        listener: (context, state) {
          log("LISTENER HomeScreen");
          if (state.isRefreshCompleted == true) {
            log("refreshCompleted");
            refreshController.refreshCompleted();
          }
        },
        builder: (context, state) {
          final products = state.productList;
          final saleProducts = state.productList.where((product) => product.sale == true).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Flowers",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue.shade800),
              ),
              leading: CustomIconButton(
                onPressed: () async {
                  if (isAdmin) {
                    await _navigateToAdmin();
                  }
                },
                iconPadding: REdgeInsets.all(3),
                child: Image.asset(
                  "assets/icons/flower_icon.png",
                  fit: BoxFit.cover,
                ),
              ),
              actions: [
                AddToCartIcon(
                  key: cartKey,
                  icon: CustomIconButton(
                    onPressed: () async {
                      if (isAdmin || cartBloc.state.productList.isEmpty) {
                        context.push("/${AppRouteNames.cart}/${AppRouteNames.order}");
                      } else {
                        await context.push("/${AppRouteNames.cart}");
                        await cartKey.currentState!.runCartAnimation(cartBloc.state.totalCount.toString());
                      }
                    },
                    padding: EdgeInsets.zero,
                    child: Image.asset(
                      "assets/icons/shop_icon.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  badgeOptions: BadgeOptions(active: context.watch<CartBloc>().state.totalCount > 0),
                ),
              ],
            ),
            body: products.isEmpty
                ? Center(
                    child: Padding(
                      padding: REdgeInsets.all(30),
                      child: Image.asset(
                        "assets/images/empty_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : SmartRefresher(
                    controller: refreshController,
                    onRefresh: () => bloc.add(const HomeEvent.getAllProducts(isRefresh: true)),
                    header: const WaterDropHeader(complete: Icon(Icons.gpp_good_outlined, color: Colors.green, size: 25)),
                    child: CustomScrollView(
                      slivers: [
                        if (saleProducts.isNotEmpty)
                          SliverToBoxAdapter(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 220.h,
                                  width: double.infinity,
                                  child: PageView.builder(
                                    controller: PageController(viewportFraction: 0.9),
                                    itemBuilder: (BuildContext context, int index) {
                                      final product = products[index];
                                      return Padding(
                                        padding: REdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                        child: CustomHomeTopCard(
                                          image: NetworkImage(product.image!),
                                          onTap: () async => await _navigateToHomeDetail(product),
                                          sale: product.sale ?? false,
                                        ),
                                      );
                                    },
                                    itemCount: products.length,
                                  ),
                                ),
                                Divider(
                                  thickness: 9,
                                  color: Colors.grey.shade200,
                                ),
                              ],
                            ),
                          ),
                        SliverPadding(
                          padding: REdgeInsets.symmetric(horizontal: 6, vertical: 10),
                          sliver: SliverGrid(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: context.mediaQuery.size.width > context.mediaQuery.size.height ? 4 : 2,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 6,
                              childAspectRatio: 9 / 16,
                            ),
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                final product = products[index];
                                return CustomHomeCard(
                                  model: product,
                                  onTapCard: () async => await _navigateToHomeDetail(product),
                                  shopOnPressed: (widgetKey) {
                                    if (!isAdmin) {
                                      addToCart(widgetKey, product);
                                    }
                                  },
                                );
                              },
                              childCount: products.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }

  Future<void> addToCart(GlobalKey widgetKey, FlowerModel product) async {
    cartBloc.add(CartEvent.addToCart(product));
    await runAddToCartAnimation(widgetKey);
    await cartKey.currentState!.runCartAnimation(cartBloc.state.totalCount.toString());
  }

  Future<void> _navigateToAdmin([FlowerModel? model]) async {
    final result = await context.push("/${AppRouteNames.adminHome}", extra: model);
    if (result == true) {
      bloc.add(const HomeEvent.getAllProducts());
    }
  }

  Future<void> _navigateToHomeDetail(FlowerModel product) async {
    if (isAdmin) {
      await _navigateToAdmin(product);
    } else {
      await context.push("/${AppRouteNames.homeDetail}", extra: product);
      await cartKey.currentState!.runCartAnimation(cartBloc.state.totalCount.toString());
    }
  }

  Future<void> _navigateToCart(FlowerModel product) async {
    if (isAdmin) {
      await _navigateToAdmin(product);
    } else {
      await context.push("/${AppRouteNames.homeDetail}", extra: product);
      await cartKey.currentState!.runCartAnimation(cartBloc.state.totalCount.toString());
    }
  }
}
