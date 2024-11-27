import 'dart:developer';
import 'dart:io';
import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flower_app/src/core/enums/bloc_status.dart';
import 'package:flower_app/src/core/widget/custom_loading.dart';
import 'package:flower_app/src/core/widget/my_text_field.dart';
import 'package:flower_app/src/core/widget/utils.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/feature/admin/admin_home/bloc/admin_bloc.dart';
import 'package:flower_app/src/core/widget/custom_icon_button.dart';
import 'package:flower_app/src/feature/home/view/widgets/custom_home_top_card.dart';
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
    log("initState AdminHomeScreen");
    nameC.text = widget.model?.name ?? "";
    descriptionC.text = widget.model?.description ?? "";
    aboutTheProductC.text = widget.model?.aboutTheProduct ?? "";
    priceC.text = widget.model?.price.toString() ?? "";
    discountedPriceC.text = widget.model?.discountedPrice.toString() ?? "";
    heightImageC.text = widget.model?.size?.heigt.toString() ?? "";
    widthImageC.text = widget.model?.size?.width.toString() ?? "";
    bloc = context.read<AdminBloc>()..add(AdminEvent.toggleSale(widget.model?.sale));
    super.initState();
  }

  @override
  void dispose() {
    bloc.add(const AdminEvent.removeFile());
    nameC.dispose();
    descriptionC.dispose();
    aboutTheProductC.dispose();
    priceC.dispose();
    discountedPriceC.dispose();
    heightImageC.dispose();
    widthImageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log("BUILD AdminHomeScreen");
    return BlocConsumer<AdminBloc, AdminState>(
      bloc: bloc,
      listener: (context, state) {
        log("LISTENER AdminHomeScreen");
        if (state.isAddedNewProduct || state.isUpdatedProduct || state.isDeletedProduct) {
          Utils.fireSnackBar(context, "Успешно");
          context.pop(true);
        }else if (state.status == BlocStatus.error) {
          Utils.fireSnackBar(context, state.msg!, backgroundColor: Colors.red);
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
                ],
              ),
              body: Padding(
                padding: REdgeInsets.symmetric(horizontal: context.mediaQuery.size.width * 0.03),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (state.file != null)
                        Column(
                          children: [
                            SizedBox(
                              height: 220.h,
                              width: double.infinity,
                              child: Padding(
                                padding: REdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                child: CustomHomeTopCard(
                                  image: FileImage(state.file!),
                                  sale: state.isOnSale,
                                  onTap: () => bloc.add(const AdminEvent.pickFile()),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 9,
                              color: Colors.grey.shade200,
                            ),
                          ],
                        ),
                      20.verticalSpace,
                      LayoutBuilder(
                        builder: (context, constraints) {
                          double width = constraints.maxWidth;
                          return SizedBox(
                            height: width,
                            width: width,
                            child: CustomHomeTopCard(
                              image: _backgroundImage(state.file)!.image,
                              sale: state.isOnSale,
                              fit: BoxFit.cover,
                              onTap: () => bloc.add(const AdminEvent.pickFile()),
                            ),
                          );
                        },
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: MyTextField(
                              controller: nameC,
                              label: const Text("Имя"),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          3.horizontalSpace,
                          Expanded(
                            flex: 2,
                            child: MyTextField(
                              controller: heightImageC,
                              label: const Text("Высота"),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          3.horizontalSpace,
                          Expanded(
                            flex: 2,
                            child: MyTextField(
                              controller: widthImageC,
                              label: const Text("Ширина"),
                              keyboardType: TextInputType.number,
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
                        maxLines: null,
                      ),
                      10.verticalSpace,
                      MyTextField(
                        controller: aboutTheProductC,
                        label: const Text("О товаре"),
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.newline,
                        minLines: 2,
                        maxLines: null,
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
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Checkbox(
                            value: state.isOnSale,
                            onChanged: (value) {
                              bloc.add(AdminEvent.toggleSale(value));
                            },
                            hoverColor: Colors.transparent,
                            overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                          ),
                          const Text(" Распродажа"),
                        ],
                      ),
                      10.verticalSpace,
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
                      20.verticalSpace,
                    ],
                  ),
                ),
              ),
            ),
            CustomLoading(visible: state.status == BlocStatus.loading),
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

  void addNewProduct() {
    FocusScope.of(context).unfocus();
    log("Image File: ${bloc.state.file?.path}");
    if (nameC.text.isNotEmpty &&
        descriptionC.text.isNotEmpty &&
        aboutTheProductC.text.isNotEmpty &&
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
            updatedTime: DateTime.now().toIso8601String(),
            sale: bloc.state.isOnSale,
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
            createdTime: DateTime.now().toIso8601String(),
            sale: bloc.state.isOnSale,
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

  DecorationImage? _backgroundImage([File? file]) {
    if (file != null) {
      return DecorationImage(
        image: FileImage(file),
        fit: BoxFit.cover,
      );
    } else {
      return DecorationImage(
        image: widget.model != null ? NetworkImage(widget.model!.image!) : const AssetImage("assets/icons/flower_icon.png"),
        fit: BoxFit.cover,
      );
    }
  }
}
