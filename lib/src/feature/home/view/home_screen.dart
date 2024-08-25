import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/core/widget/app_material_context.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            themeController.switchTheme();
          },
          icon: Icon(
            themeController.isLight ? Icons.dark_mode_rounded : Icons.light_mode,
            color: context.theme.colorScheme.surfaceTint,
            size: 54,
          ),
        ),
      ),
    );
  }
}
