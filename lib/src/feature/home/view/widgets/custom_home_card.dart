import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeCard extends StatelessWidget {
  CustomHomeCard({
    super.key,
    this.imageUrl,
    this.name,
    this.description,
    this.price,
    this.discountedPrice,
    this.onTapCard,
    required this.shopOnPressed,
  });
  final String? imageUrl;
  final String? name;
  final String? description;
  final double? price;
  final double? discountedPrice;
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
                return Container(
                  key: widgetKey,
                  height: width,
                  width: width,
                  decoration: BoxDecoration(borderRadius: borderRadius),
                  child: ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.network(
                      imageUrl ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvKch888mIQd5F21sYSavIy8-5mY1ioZH9cQ&s",
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
              Padding(
                padding: REdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? "",
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "$description\n",
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
                                  price.toString(),
                                  style: const TextStyle(decoration: TextDecoration.lineThrough),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "$discountedPrice сум",
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
