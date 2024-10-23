import 'dart:developer';

import 'package:add_to_cart_animation/add_to_cart_animation.dart';
import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/core/routes/app_route_names.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/feature/cart/bloc/cart_bloc.dart';
import 'package:flower_app/src/feature/home/bloc/home_bloc.dart';
import 'package:flower_app/src/core/widget/custom_appbar.dart';
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
    bloc = context.read<HomeBloc>()..add(const HomeEvent.getAllProducts());
    cartBloc = context.read<CartBloc>();
    super.initState();
  }

  @override
  void dispose() {
    refreshController.dispose();
    bloc.close();
    super.dispose();
  }

  bool sale = true;

  @override
  Widget build(BuildContext context) {
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
          log("LISTENER");
          if (!state.isLoading) {
            log("refreshCompleted");
            refreshController.refreshCompleted();
          }
        },
        builder: (context, state) {
          final products = state.productList;
          return Scaffold(
            appBar: CustomAppBar(
              title: const Text(
                "+998 99 875 48 99",
                style: TextStyle(fontSize: 16),
              ),
              leading: CustomIconButton(
                onPressed: () async => await _navigateToAdmin(),
                iconPadding: REdgeInsets.all(4),
                child: Image.asset(
                  "assets/icons/flower_icon.png",
                  fit: BoxFit.cover,
                  color: context.theme.colorScheme.onSurface,
                ),
              ),
              action: AddToCartIcon(
                key: cartKey,
                icon: CustomIconButton(
                  onPressed: () => context.go("${AppRouteNames.home}/${AppRouteNames.cart}"),
                  child: Image.asset(
                    "assets/icons/shop_icon.png",
                    fit: BoxFit.cover,
                  ),
                ),
                badgeOptions: BadgeOptions(active: context.watch<CartBloc>().state.totalCount > 0),
              ),
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
                    onRefresh: () => bloc.add(const HomeEvent.getAllProducts()),
                    header: const WaterDropHeader(complete: Icon(Icons.gpp_good_outlined, color: Colors.green, size: 25)),
                    child: CustomScrollView(
                      slivers: [
                        if (sale)
                          SliverToBoxAdapter(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 220,
                                  width: double.infinity,
                                  child: PageView.builder(
                                    controller: PageController(viewportFraction: 0.9),
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        margin: REdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                        height: double.infinity,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.blue.shade800,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      );
                                    },
                                    itemCount: 3,
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
                                  imageUrl: product.image,
                                  name: product.name,
                                  description: product.description,
                                  price: product.price,
                                  discountedPrice: product.discountedPrice,
                                  // onTapCard: () => _navigateToAdmin(product),
                                  onTapCard: () {
                                    context.go("${AppRouteNames.home}/${AppRouteNames.homeDetail}", extra: product);
                                  },
                                  shopOnPressed: (widgetKey) {
                                    addToCart(widgetKey, product);
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

  void addToCart(GlobalKey widgetKey, FlowerModel product) async {
    cartBloc.add(CartEvent.addToCart(product));
    await runAddToCartAnimation(widgetKey);
    await cartKey.currentState!.runCartAnimation(cartBloc.state.totalCount.toString());
  }

  Future<void> _navigateToAdmin([FlowerModel? model]) async {
    final result = await context.push("${AppRouteNames.home}/${AppRouteNames.adminHome}", extra: model);
    if (result == true) {
      bloc.add(const HomeEvent.getAllProducts());
    }
  }

  Future<void> _navigateToCart(FlowerModel model) async {
    final result = await context.push("${AppRouteNames.home}/${AppRouteNames.homeDetail}", extra: model);
    if (result == true) {
      bloc.add(const HomeEvent.getAllProducts());
    }
  }
}
