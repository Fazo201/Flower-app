import 'dart:io';

import 'package:flower_app/src/data/entity/flower_model.dart';

abstract class AppRepo {
  Future<List<FlowerModel>> getAllData();
  Future<void> addData(FlowerModel model,File file);
  Future<void> updateData(FlowerModel model,[File? file]);
  Future<void> deleteData(FlowerModel model);
}