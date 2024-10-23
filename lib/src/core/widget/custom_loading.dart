import 'dart:ui';

import 'package:flutter/material.dart';

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
            child: CircularProgressIndicator(
              color: Colors.blue.shade600,
              strokeWidth: 8,
            ),
          ),
        ),
      ),
    );
  }
}
