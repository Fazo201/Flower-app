import 'package:flower_app/src/core/widget/custom_appbar.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({super.key, required this.model});
  final FlowerModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: CustomIconButton(
          onPressed: () => context.pop(),
          child: const Icon(CupertinoIcons.arrow_left),
        ),
      ),
      body: const Center(
        child: Text("HomeDetailScreen"),
      ),
      bottomNavigationBar: Material(
        elevation: 15,
        child: ListTile(
          title: Text(
            "${model.discountedPrice} сум",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "${model.price} сум",
            style: const TextStyle(decoration: TextDecoration.lineThrough),
          ),
          trailing: MaterialButton(
            onPressed: () {},
            color: Colors.blue.shade700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "В корзину",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
