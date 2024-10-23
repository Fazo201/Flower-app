import 'package:flutter/material.dart';

class CustomBottomCard extends StatelessWidget {
  const CustomBottomCard({super.key, this.height, required this.title, this.body});
  final double? height;
  final Widget title;
  final Widget? body;
  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 15,
        child: SizedBox(
          height: height ?? 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      title,
                      if(body!=null)body!,
                    ],
                  ),
                ),
                MaterialButton(
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
              ],
            ),
          ),
        ),
      );
  }
}