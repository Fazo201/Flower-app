import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeCard extends StatelessWidget {
  CustomHomeCard({
    super.key,
    required this.model,
    this.onTapCard,
    required this.shopOnPressed,
  });
  final FlowerModel model;
  final void Function()? onTapCard;
  final void Function(GlobalKey) shopOnPressed;
  final GlobalKey widgetKey = GlobalKey();
  final BorderRadius borderRadius = BorderRadius.circular(8.r);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTapCard,
        child: SingleChildScrollView(
          child: Column(
            children: [
              LayoutBuilder(builder: (context, constraints) {
                double width = constraints.maxWidth;
                return Stack(
                  children: [
                    Container(
                      key: widgetKey,
                      height: width,
                      width: width,
                      decoration: BoxDecoration(borderRadius: borderRadius),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: borderRadius,
                              image: DecorationImage(
                                image: model.image != null ? NetworkImage(model.image!): const AssetImage("assets/icons/flower_icon.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          if (model.sale==true)
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin: REdgeInsets.all(5),
                                padding: REdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  color: Colors.pink.shade800,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text("Распродажа", style: TextStyle(color: Colors.white, fontSize: 12)),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
              Padding(
                padding: REdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name??"",
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "${model.description ?? "\n"}\n",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        if (context.mediaQuery.size.width > 250)
                          Expanded(
                            flex: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${model.price} сум",
                                  style: const TextStyle(decoration: TextDecoration.lineThrough),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "${model.discountedPrice} сум",
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        Expanded(
                          flex: context.mediaQuery.size.width > 300 ? 3 : 5,
                          child: IconButton(
                            onPressed: () => shopOnPressed(widgetKey),
                            icon: const Icon(
                              Icons.shopping_bag_outlined,
                              size: 32,
                            ),
                            isSelected: true,
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
