import "package:flower_app/src/core/widget/app_material_context.dart";
import "package:flower_app/src/core/widget/custom_screen_util.dart";
import "package:flutter/material.dart";

class App extends StatelessWidget {
  const App({super.key});

  static void run() => runApp(const App());

  @override
  Widget build(BuildContext context) => const CustomScreenUtil(
        enabledPreview: false,
        child: AppMaterialContext(),
      );
}
