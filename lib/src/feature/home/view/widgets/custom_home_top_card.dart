import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeTopCard extends StatelessWidget {
  const CustomHomeTopCard({super.key, required this.image, this.onTap, this.sale = false, this.fit = BoxFit.fill});
  final ImageProvider<Object> image;
  final void Function()? onTap;
  final bool sale;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: image,
              fit: fit,
            ),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTap,
          ),
        ),
        if (sale)
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: REdgeInsets.all(5),
              padding: REdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.pink.shade800,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text("Распродажа", style: TextStyle(color: Colors.white)),
            ),
          ),
      ],
    );
  }
}
