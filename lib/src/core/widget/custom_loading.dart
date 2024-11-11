import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key, required this.visible});
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: AbsorbPointer(
        absorbing: visible,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
          child: Center(
            child: Lottie.asset(
              "assets/lotties/loading_lottie.json",
              height: 60.sp,
              width: 60.sp,
            ),
          ),
        ),
      ),
    );
  }
}
