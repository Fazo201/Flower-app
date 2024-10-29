import 'dart:developer';
import 'dart:io';
import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/core/routes/app_route_names.dart';
import 'package:flower_app/src/core/widget/custom_loading.dart';
import 'package:flower_app/src/core/widget/my_text_field.dart';
import 'package:flower_app/src/core/widget/utils.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/feature/admin/admin_home/bloc/admin_bloc.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key, this.model});
  final FlowerModel? model;

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  final TextEditingController nameC = TextEditingController();
  final TextEditingController descriptionC = TextEditingController();
  final TextEditingController aboutTheProductC = TextEditingController();
  final TextEditingController priceC = TextEditingController();
  final TextEditingController discountedPriceC = TextEditingController();
  final TextEditingController heightImageC = TextEditingController();
  final TextEditingController widthImageC = TextEditingController();
  late final AdminBloc bloc;

  @override
  void initState() {
    log("initState AdminHomeScreen \nMODEL: ${widget.model}");
    nameC.text = widget.model?.name ?? "";
    descriptionC.text = widget.model?.description ?? "";
    priceC.text = widget.model?.price.toString() ?? "";
    discountedPriceC.text = widget.model?.discountedPrice.toString() ?? "";
    heightImageC.text = widget.model?.size?.heigt.toString() ?? "";
    widthImageC.text = widget.model?.size?.width.toString() ?? "";
    bloc = context.read<AdminBloc>();
    super.initState();
  }

  @override
  void dispose() {
    nameC.dispose();
    descriptionC.dispose();
    priceC.dispose();
    discountedPriceC.dispose();
    heightImageC.dispose();
    widthImageC.dispose();
    super.dispose();
  }

  void addNewProduct() {
    FocusScope.of(context).unfocus();
    log("Image File: ${bloc.state.file?.path}");
    if (nameC.text.isNotEmpty &&
        descriptionC.text.isNotEmpty &&
        aboutTheProductC.text.isNotEmpty&&
        priceC.text.isNotEmpty &&
        discountedPriceC.text.isNotEmpty &&
        heightImageC.text.isNotEmpty &&
        widthImageC.text.isNotEmpty) {
      final flowerModel = widget.model?.copyWith(
            name: nameC.text,
            description: descriptionC.text,
            aboutTheProduct: aboutTheProductC.text,
            price: double.tryParse(priceC.text),
            discountedPrice: double.tryParse(discountedPriceC.text),
            totalPrice: double.tryParse(discountedPriceC.text),
            size: Size(
              heigt: double.tryParse(heightImageC.text),
              width: double.tryParse(widthImageC.text),
            ),
          ) ??
          FlowerModel(
            name: nameC.text,
            description: descriptionC.text,
            aboutTheProduct: aboutTheProductC.text,
            price: double.tryParse(priceC.text),
            discountedPrice: double.tryParse(discountedPriceC.text),
            totalPrice: double.tryParse(discountedPriceC.text),
            size: Size(
              heigt: double.tryParse(heightImageC.text),
              width: double.tryParse(widthImageC.text),
            ),
          );
      if (widget.model == null && bloc.state.file != null) {
        bloc.add(AdminEvent.addNewProduct(flowerModel));
      } else {
        bloc.add(AdminEvent.updateProduct(product: flowerModel, file: bloc.state.file));
      }
    } else {
      Utils.fireSnackBar(context, "Все поля должны быть заполнены", backgroundColor: Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminBloc, AdminState>(
      bloc: bloc,
      listener: (context, state) {
        log("LISTENER");
        if (state.error != null) {
          Utils.fireSnackBar(context, "${state.error}\n${DateTime.now().toLocal()}", backgroundColor: Colors.red);
        } else if (state.error == null && !state.isLoading && state.file == null) {
          Utils.fireSnackBar(context, "Успешно");
          context.pop(true);
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                title: const Text("Админ"),
                leading: CustomIconButton(
                  onPressed: () => context.pop(),
                  child: const Icon(CupertinoIcons.left_chevron),
                ),
                actions: [
                  if (widget.model != null)
                    CustomIconButton(
                      onPressed: () => _deleteDialog(widget.model!),
                      child: const Icon(CupertinoIcons.delete, color: Colors.red),
                    ),
                  CustomIconButton(
                    onPressed: () {
                      context.go("${AppRouteNames.home}${AppRouteNames.adminHome}/${AppRouteNames.adminOrder}");
                    },
                    child: Image.asset(
                      "assets/icons/shop_active_icon.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              body: Padding(
                padding: REdgeInsets.symmetric(horizontal: context.mediaQuery.size.width * 0.03),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      20.verticalSpace,
                      LayoutBuilder(
                        builder: (context, constraints) {
                          double width = constraints.maxWidth;
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: SizedBox(
                              height: width,
                              width: width,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  image: backgroundImage(file: state.file),
                                ),
                                child: MaterialButton(
                                  onPressed: () {
                                    bloc.add(const AdminEvent.pickFile());
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: MyTextField(controller: nameC, label: const Text("Имя"), keyboardType: TextInputType.text, maxLines: 1),
                          ),
                          3.horizontalSpace,
                          Expanded(
                            flex: 2,
                            child: MyTextField(
                              controller: heightImageC,
                              label: const Text("Высота"),
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                            ),
                          ),
                          3.horizontalSpace,
                          Expanded(
                            flex: 2,
                            child: MyTextField(
                              controller: widthImageC,
                              label: const Text("Ширина"),
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      MyTextField(
                        controller: descriptionC,
                        label: const Text("Описание"),
                        keyboardType: TextInputType.text,
                        minLines: 2,
                        maxLines: 5,
                      ),
                      10.verticalSpace,
                      MyTextField(
                        controller: aboutTheProductC,
                        label: const Text("О товаре"),
                        keyboardType: TextInputType.text,
                        minLines: 3,
                        maxLines: 6,
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Expanded(
                            child: MyTextField(
                              controller: priceC,
                              label: const Text("Цена"),
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                            ),
                          ),
                          10.horizontalSpace,
                          Expanded(
                            child: MyTextField(
                              controller: discountedPriceC,
                              label: const Text("Цена со скидкой"),
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      MaterialButton(
                        onPressed: () => addNewProduct(),
                        height: 54,
                        minWidth: double.infinity,
                        color: Colors.blue,
                        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          widget.model == null ? "Создать" : "Обновить",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomLoading(visible: state.isLoading),
          ],
        );
      },
    );
  }

  void _deleteDialog(FlowerModel model) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Удалить"),
          content: const Text("Вы действительно хотите удалить?"),
          actions: [
            MaterialButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Отмена'),
            ),
            MaterialButton(
              onPressed: () {
                bloc.add(AdminEvent.deleteProduct(model));
                Navigator.of(context).pop();
              },
              child: const Text("Удалить"),
            ),
          ],
        );
      },
    );
  }

  DecorationImage? backgroundImage({File? file}) {
    if (file != null) {
      return DecorationImage(
        image: FileImage(file),
        fit: BoxFit.cover,
      );
    } else {
      return DecorationImage(
        image: widget.model != null ? NetworkImage(widget.model!.image!) : const AssetImage("assets/images/no_image.png"),
        fit: BoxFit.cover,
      );
    }
  }
}
