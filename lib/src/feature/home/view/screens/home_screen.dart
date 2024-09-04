import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/core/widget/app_material_context.dart';
import 'package:flower_app/src/feature/home/view/widgets/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        shadowColor: context.theme.colorScheme.shadow,
        elevation: 6,
        surfaceTintColor: context.theme.colorScheme.surface,
        toolbarHeight: 70.h,
        title: const Text("FLOWERS",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Padding(
            padding: REdgeInsets.only(top: 21.5,bottom: 11, left: 15),
            child: Builder(builder: (context) {
              return CustomIconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                iconPadding: REdgeInsets.all(4),
                child: Image.asset(
                  "assets/images/image.png",
                  fit: BoxFit.cover,
                  color: context.theme.colorScheme.onSurface,
                ),
              );
            }),
          ),
        leadingWidth: 57,
        actions: [
          Padding(
            padding: REdgeInsets.only(top: 12, right: 15),
            child: CustomIconButton(
              onPressed: () {
                themeController.switchTheme();
              },
              child: Image.asset(
                "assets/images/shop.png",
                fit: BoxFit.cover,
                color: context.theme.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: REdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 9 / 16,
        ),
        itemBuilder: (context, index) {
          return Material(
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      "https://thumbs.dreamstime.com/b/soap-carving-flower-wood-background-64702188.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ),
          );
        },
        itemCount: 8,
      ),
    );
  }
}
