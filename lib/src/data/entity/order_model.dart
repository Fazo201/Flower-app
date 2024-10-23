import 'dart:convert';

OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
    String? name;
    String? phoneNumber;
    List<FlowerModel>? flowerModel;

    OrderModel({
        this.name,
        this.phoneNumber,
        this.flowerModel,
    });

    OrderModel copyWith({
        String? name,
        String? phoneNumber,
        List<FlowerModel>? flowerModel,
    }) => 
        OrderModel(
            name: name ?? this.name,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            flowerModel: flowerModel ?? this.flowerModel,
        );

    factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        name: json["name"],
        phoneNumber: json["phoneNumber"],
        flowerModel: json["flowerModel"] == null ? [] : List<FlowerModel>.from(json["flowerModel"]!.map((x) => FlowerModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "phoneNumber": phoneNumber,
        "flowerModel": flowerModel == null ? [] : List<dynamic>.from(flowerModel!.map((x) => x.toJson())),
    };
}

class FlowerModel {
    String? id;
    String? name;
    String? image;
    Size? size;
    String? description;
    double? price;
    double? totalPrice;
    double? discountedPrice;
    String? createdTime;
    int? count;
    bool? confirm;

    FlowerModel({
        this.id,
        this.name,
        this.image,
        this.size,
        this.description,
        this.price,
        this.totalPrice,
        this.discountedPrice,
        this.createdTime,
        this.count,
        this.confirm,
    });

    FlowerModel copyWith({
        String? id,
        String? name,
        String? image,
        Size? size,
        String? description,
        double? price,
        double? totalPrice,
        double? discountedPrice,
        String? createdTime,
        int? count,
        bool? confirm,
    }) => 
        FlowerModel(
            id: id ?? this.id,
            name: name ?? this.name,
            image: image ?? this.image,
            size: size ?? this.size,
            description: description ?? this.description,
            price: price ?? this.price,
            totalPrice: totalPrice ?? this.totalPrice,
            discountedPrice: discountedPrice ?? this.discountedPrice,
            createdTime: createdTime ?? this.createdTime,
            count: count ?? this.count,
            confirm: confirm ?? this.confirm,
        );

    factory FlowerModel.fromJson(Map<String, dynamic> json) => FlowerModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        size: json["size"] == null ? null : Size.fromJson(json["size"]),
        description: json["description"],
        price: json["price"]?.toDouble(),
        totalPrice: json["totalPrice"]?.toDouble(),
        discountedPrice: json["discountedPrice"]?.toDouble(),
        createdTime: json["createdTime"],
        count: json["count"],
        confirm: json["confirm"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "size": size?.toJson(),
        "description": description,
        "price": price,
        "totalPrice": totalPrice,
        "discountedPrice": discountedPrice,
        "createdTime": createdTime,
        "count": count,
        "confirm": confirm,
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
