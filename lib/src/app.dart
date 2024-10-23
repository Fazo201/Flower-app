import "package:flower_app/src/core/widget/app_material_context.dart";
import "package:flower_app/src/core/widget/custom_screen_util.dart";
import "package:flower_app/src/data/repository/app_repository_impl.dart";
import "package:flower_app/src/feature/admin/bloc/admin_bloc.dart";
import "package:flower_app/src/feature/home/bloc/home_bloc.dart";
import "package:flower_app/src/feature/cart/bloc/cart_bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class App extends StatelessWidget {
  const App({super.key});

  static void run() => runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider(create: (context)=>HomeBloc(AppRepoImpl())),
            BlocProvider(create: (constext)=>AdminBloc(AppRepoImpl())),
            BlocProvider(create: (constext)=>CartBloc()),
          ],
          child: const App(),
        ),
      );

  @override
  Widget build(BuildContext context) => const CustomScreenUtil(
        enabledPreview: true,
        child: AppMaterialContext(),
      );
}
