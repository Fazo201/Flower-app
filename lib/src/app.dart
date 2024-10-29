import "package:flower_app/src/core/widget/app_material_context.dart";
import "package:flower_app/src/core/widget/custom_screen_util.dart";
import "package:flower_app/src/data/repository/app_repository_impl.dart";
import "package:flower_app/src/feature/admin/admin_home/bloc/admin_bloc.dart";
import "package:flower_app/src/feature/home/bloc/home_bloc.dart";
import "package:flower_app/src/feature/user/cart/bloc/cart_bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

final AppRepoImpl _appRepo = AppRepoImpl();
class App extends StatelessWidget {
  const App({super.key});
  
  static void run() => runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider(create: (context)=>HomeBloc(_appRepo)),
            BlocProvider(create: (constext)=>AdminBloc(_appRepo)),
            BlocProvider(create: (constext)=>CartBloc(_appRepo)),
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
