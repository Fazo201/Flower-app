import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flower_app/src/core/server/cloud_firestore_server.dart';
import 'package:flower_app/src/core/server/storage_server.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/data/repository/app_repository.dart';

class AppRepoImpl implements AppRepo{

  @override
  Future<void> addData(FlowerModel model,File file) async{
    model.image = await StorageServer.upload(path: "Flower Images", file: file);
    final DocumentReference<Map<String, dynamic>> documentRef = await CloudFirestoreServer.createCollection(collectionPath: "Products", data: model.toJson());
    await documentRef.update({'id': documentRef.id});
  }

  @override
  Future<List<FlowerModel>> getAllData() async{
    List<QueryDocumentSnapshot<Map<String, dynamic>>> products = await CloudFirestoreServer.readAllData(collectionPath: "Products");
    List<FlowerModel> flowerList = products.map((product)=>FlowerModel.fromJson(product.data())).toList();
    return flowerList;
  }

  @override
  Future<void> updateData(FlowerModel model,[File? file]) async{
    log("updateData\n ID:${model.id}\n Image:${model.image}");
    if (file!=null) {
      await StorageServer.delete(imageUrl: model.image!);
      model.image = await StorageServer.upload(path: "Flower Images", file: file);
    }
    await CloudFirestoreServer.update(collectionPath: "Products", id: model.id!, data: model.toJson());
  }

  @override
  Future<void> deleteData(FlowerModel model) async{
    log("products[index].id: ${model.id}");
    await StorageServer.delete(imageUrl: model.image!);
    await CloudFirestoreServer.delete(collectionPath: "Products", id: model.id!);
  }
  
}
