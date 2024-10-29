import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key,  this.onPressed, required this.child, this.padding, this.iconPadding});
  final void Function()? onPressed;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? iconPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        width: 40,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: context.theme.colorScheme.surface,
            boxShadow: [
              BoxShadow(color: context.theme.colorScheme.shadow, blurRadius: 8, offset: const Offset(0, 4)),
            ],
          ),
          child: MaterialButton(
            padding: iconPadding ?? REdgeInsets.all(6),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            onPressed: onPressed,
            child: child,
          ),
        ),
      ),
    );
  }
}
