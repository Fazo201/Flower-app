import 'package:flower_app/setup.dart';
import 'package:flower_app/src/data/entity/order_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomOrderCard extends StatelessWidget {
  const CustomOrderCard({
    super.key,
    required this.order,
    this.onTapCard,
    this.onPressedButton,
    this.buttonText,
  });
  final OrderModel order;
  final void Function()? onTapCard;
  final void Function()? onPressedButton;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: InkWell(
        onTap: onTapCard,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Text(
                    "Заказ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: order.confirm == true ? Colors.green.shade600 : Colors.yellow.shade900,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: REdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        order.confirm == true ? (!isAdmin ? "Получен" : "Выдан") : (!isAdmin ? "В процессе" : "Новый"),
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
              8.verticalSpace,
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Text(
                    "Общее количество товара(ов):",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Text(
                    "${order.totalCount ?? ""}",
                  ),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Text(
                    "Общая стоимость товара(ов):",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Text(
                    "${order.totalCost ?? ""}",
                  ),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Text(
                    "Дата оформления:",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Text(
                    DateFormat("          HH:mm\ndd-MM-yyyy").format(DateTime.parse(order.registrationDate.toString())),
                  ),
                ],
              ),
              4.verticalSpace,
              if (!isAdmin)
                Text(
                  order.confirm == true
                      ? "Благодарим вас за покупку! Будем рады видеть вас снова! ☺️"
                      : "Скоро свяжемся, благодарим за терпение! ☺️",
                  style: TextStyle(color: order.confirm == true ? Colors.green.shade600 : Colors.yellow.shade900, fontSize: 8.sp),
                )
              else
                Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Text(
                    order.name??"",
                  ),
                  Text(
                    order.phoneNumber??"",
                  ),
                ],
              ),
              if (onPressedButton != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade200,
                    ),
                    MaterialButton(
                      onPressed: onPressedButton,
                      padding: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          buttonText ?? "",
                          style: TextStyle(color: Colors.blue.shade900),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
