import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flower_app/setup.dart';
import 'package:flower_app/src/core/server/cloud_firestore_server.dart';
import 'package:flower_app/src/core/server/db_service.dart';
import 'package:flower_app/src/core/server/storage_server.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/data/entity/order_model.dart';
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
    final sortedflowerList = List.of(flowerList)..sort((a, b) => b.createdTime!.compareTo(a.createdTime!));
    return sortedflowerList;
  }

  @override
  Future<void> updateData(FlowerModel model,[File? file]) async{
    if (file!=null) {
      await StorageServer.delete(imageUrl: model.image!);
      model.image = await StorageServer.upload(path: "Flower Images", file: file);
    }
    if (model.id!=null) {
      await CloudFirestoreServer.update(collectionPath: "Products", id: model.id!, data: model.toJson());
    }else{
      log("updateData: model.id = null");
    }
  }

  @override
  Future<void> deleteData(FlowerModel model) async{
    await StorageServer.delete(imageUrl: model.image!);
    await CloudFirestoreServer.delete(collectionPath: "Products", id: model.id!);
  }




  ///  Order
  
  @override
  Future<void> addOrder(OrderModel model) async{
    final DocumentReference<Map<String, dynamic>> documentRef = await CloudFirestoreServer.createCollection(collectionPath: "Orders", data: model.toJson());
    await documentRef.update({'id': documentRef.id});
    if (model.name!=null && model.phoneNumber!=null) {
      await DBService.addData(DBKey.name, model.name!);
      await DBService.addData(DBKey.phoneNumber, model.phoneNumber!);
      name = await DBService.loadData(DBKey.name);
      phoneNumber = await DBService.loadData(DBKey.phoneNumber);
      log("name: $name");
      log("phoneNumber: $phoneNumber");
    }
  }

  @override
  Future<List<OrderModel>> getAllOrders() async{
    List<QueryDocumentSnapshot<Map<String, dynamic>>> products = await CloudFirestoreServer.readAllData(collectionPath: "Orders");
    List<OrderModel> orderList = products.map((product)=>OrderModel.fromJson(product.data())).toList();
    if (!isAdmin) {
      orderList = orderList.where((order)=>order.phoneNumber==phoneNumber).toList();
    }
    final sortedOrderList = List.of(orderList)..sort((a, b) => b.registrationDate!.compareTo(a.registrationDate!));
    return sortedOrderList;
  }

  @override
  Future<void> updateOrder(OrderModel model) async{
    if (model.id!=null) {
      await CloudFirestoreServer.update(collectionPath: "Orders", id: model.id!, data: model.toJson());
    }else{
      log("model.id = null");
    }
  }

  @override
  Future<void> deleteOrder(OrderModel model) async{
    if (model.id!=null) {
      await CloudFirestoreServer.delete(collectionPath: "Orders", id: model.id!);
    }else{
      log("deleteOrder: model.id = null");
    }
  }
  
}

