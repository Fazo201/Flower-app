import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrderDetailCard extends StatelessWidget {
  const CustomOrderDetailCard({super.key,
    required this.model,
    this.onTapCard,
  });
  final FlowerModel model;
  final void Function()? onTapCard;
  @override
  Widget build(BuildContext context) {
    return Material(
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
                  ],
                ),
              ),
              8.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      model.name ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      model.description ?? "",
                      style: const TextStyle(height: 1.2),
                    ),
                    Text("Высота: ${model.size?.heigt ?? ""} см"),
                    Text("Ширина: ${model.size?.width ?? ""} см"),
                    Text("Количество: ${model.count ?? ""}"),
                    Text("Стоимость: ${model.price ?? ""} сум"),
                    2.verticalSpace,
                    Text("Общая стоимость: ${model.totalPrice ?? ""} сум"),
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