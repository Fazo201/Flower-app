// To parse this JSON data, do
//
//     final orderModel = orderModelFromJson(jsonString);

import 'dart:convert';

import 'package:flower_app/src/data/entity/flower_model.dart';

OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
    String? id;
    String? name;
    String? phoneNumber;
    String? registrationDate;
    bool? confirm;
    int? totalCount;
    double? totalCost;
    List<FlowerModel>? flowerModel;

    OrderModel({
        this.id,
        this.name,
        this.phoneNumber,
        this.registrationDate,
        this.confirm,
        this.totalCount,
        this.totalCost,
        this.flowerModel,
    });

    OrderModel copyWith({
        String? id,
        String? name,
        String? phoneNumber,
        String? registrationDate,
        bool? confirm,
        int? totalCount,
        double? totalCost,
        List<FlowerModel>? flowerModel,
    }) => 
        OrderModel(
            id: id ?? this.id,
            name: name ?? this.name,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            registrationDate: registrationDate ?? this.registrationDate,
            confirm: confirm ?? this.confirm,
            totalCount: totalCount ?? this.totalCount,
            totalCost: totalCost ?? this.totalCost,
            flowerModel: flowerModel ?? this.flowerModel,
        );

    factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"],
        name: json["name"],
        phoneNumber: json["phoneNumber"],
        registrationDate: json["registrationDate"],
        confirm: json["confirm"],
        totalCount: json["totalCount"],
        totalCost: json["totalCost"]?.toDouble(),
        flowerModel: json["flowerModel"] == null ? [] : List<FlowerModel>.from(json["flowerModel"]!.map((x) => FlowerModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phoneNumber": phoneNumber,
        "registrationDate": registrationDate,
        "confirm": confirm,
        "totalCount": totalCount,
        "totalCost": totalCost,
        "flowerModel": flowerModel == null ? [] : List<dynamic>.from(flowerModel!.map((x) => x.toJson())),
    };
}

class Size {
    double? heigt;
    double? width;

    Size({
        this.heigt,
        this.width,
    });

    Size copyWith({
        double? heigt,
        double? width,
    }) => 
        Size(
            heigt: heigt ?? this.heigt,
            width: width ?? this.width,
        );

    factory Size.fromJson(Map<String, dynamic> json) => Size(
        heigt: json["heigt"]?.toDouble(),
        width: json["width"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "heigt": heigt,
        "width": width,
    };
}
