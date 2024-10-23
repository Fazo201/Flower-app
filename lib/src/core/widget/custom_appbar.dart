import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key, this.title, this.leading, this.action, this.action2,
  });
  final Widget? title;
  final Widget? leading;
  final Widget? action;
  final Widget? action2;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: context.theme.colorScheme.shadow,
      elevation: 6,
      surfaceTintColor: context.theme.colorScheme.surface,
      title: title,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: REdgeInsets.only(top: 7.3, bottom: 7.5, left: 15),
        child: leading,
      ),
      leadingWidth: 57,
      actions: [
        if(action2 != null)
        Padding(
          padding: REdgeInsets.only(right: 10),
          child: action2,
        ),
        Padding(
          padding: REdgeInsets.only(right: 10),
          child: action,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
