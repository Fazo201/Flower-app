import "package:flower_app/src/core/style/app_theme.dart";
import "package:flutter/material.dart";
import "../../feature/settings/inherited_theme_notifier.dart";
import "../../feature/settings/theme_controller.dart";
import "../routes/router_config.dart";

final ThemeController themeController = ThemeController();

class AppMaterialContext extends StatelessWidget {
  const AppMaterialContext({super.key});

  @override
  Widget build(BuildContext context) => InheritedThemeNotifier(
        themeController: themeController,
        child: Builder(
          builder: (context) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            // theme: InheritedThemeNotifier.maybeOf(context)?.theme,
            theme: AppThemes.light(),
            routerConfig: RouterConfigService.router,
          ),
        ),
      );
}
