import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCartCard extends StatelessWidget {
  const CustomCartCard({
    super.key,
    required this.model,
    required this.increment,
    required this.decrement,
    this.onTapCard,
  });
  final FlowerModel model;
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
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(8.r),
                                image: DecorationImage(
                                  image: model.image != null ? NetworkImage(model.image!):const AssetImage("assets/icons/flower_icon.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          if (model.sale == true)
                            Container(
                              margin: REdgeInsets.all(5),
                              padding: REdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.pink.shade800,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                "Распродажа",
                                style: TextStyle(color: Colors.white, fontSize: 11),
                              ),
                            ),
                        ],
                      ),
                      const Spacer(),
                      Text("Высота: ${model.size?.heigt ?? ""} см"),
                      2.verticalSpace,
                      Text("Ширина: ${model.size?.width ?? ""} см"),
                    ],
                  ),
                ),
                8.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        children: [
                          Text(
                            "${model.discountedPrice! * model.count!} сум  ",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "${model.price! * model.count!} сум",
                            style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      Text(
                        model.name ?? "",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          model.description ?? "",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: const TextStyle(height: 1.2),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            children: [
                              Text(
                                "${model.discountedPrice} сум/шт",
                                style: const TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 40,
                                width: 150,
                                child: CustomCartTextField(
                                  controller: TextEditingController(text: model.count.toString()),
                                  increment: increment,
                                  decrement: decrement,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
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
