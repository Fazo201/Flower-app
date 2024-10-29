import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCartCard extends StatelessWidget {
  const CustomCartCard({
    super.key,
    this.onTapCard,
    required this.price,
    required this.discountedPrice,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.heightImage,
    required this.widthImage,
    required this.increment,
    required this.decrement,
    required this.unitPrice, 
    required this.count,
  });
  final String price;
  final String discountedPrice;
  final String unitPrice;
  final String name;
  final String description;
  final String imageUrl;
  final String heightImage;
  final String widthImage;
  final String count;
  final void Function()? onTapCard;
  final void Function() increment;
  final void Function() decrement;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Material(
        elevation: 2,
        child: InkWell(
          onTap: onTapCard,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: context.mediaQuery.size.width > 150 ? 150 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      6.verticalSpace,
                      Text(heightImage),
                      2.verticalSpace,
                      Text(widthImage),
                    ],
                  ),
                ),
                8.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Text(
                            discountedPrice,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            price,
                            style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: const TextStyle(height: 1.2),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: [
                              Text(
                                unitPrice,
                                style: const TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 40,
                                width: 150,
                                child: CustomCartTextField(
                                  controller: TextEditingController(text: count),
                                  increment: increment,
                                  decrement: decrement,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCartTextField extends StatelessWidget {
  const CustomCartTextField({
    super.key,
    required this.controller,
    required this.increment,
    required this.decrement,
  });
  final TextEditingController controller;
  final void Function() increment;
  final void Function() decrement;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.none,
      showCursor: false,
      readOnly: true,
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(4),
          child: MaterialButton(
            onPressed: decrement,
            color: Colors.white,
            minWidth: 12,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: const Icon(Icons.remove, size: 18),
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(4),
          child: MaterialButton(
            onPressed: increment,
            color: Colors.white,
            minWidth: 12,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: const Icon(Icons.add, size: 18),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
      ),
    );
  }
}
