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
    String? aboutTheProduct;
    double? price;
    double? totalPrice;
    double? discountedPrice;
    String? createdTime;
    int? count;
    bool? confirm;
    bool? sale;

    FlowerModel({
        this.id,
        this.name,
        this.image,
        this.size,
        this.description,
        this.aboutTheProduct,
        this.price,
        this.totalPrice,
        this.discountedPrice,
        this.createdTime,
        this.count,
        this.confirm,
        this.sale,
    });

    FlowerModel copyWith({
        String? id,
        String? name,
        String? image,
        Size? size,
        String? description,
        String? aboutTheProduct,
        double? price,
        double? totalPrice,
        double? discountedPrice,
        String? createdTime,
        int? count,
        bool? confirm,
        bool? sale,
    }) => 
        FlowerModel(
            id: id ?? this.id,
            name: name ?? this.name,
            image: image ?? this.image,
            size: size ?? this.size,
            description: description ?? this.description,
            aboutTheProduct: aboutTheProduct ?? this.aboutTheProduct,
            price: price ?? this.price,
            totalPrice: totalPrice ?? this.totalPrice,
            discountedPrice: discountedPrice ?? this.discountedPrice,
            createdTime: createdTime ?? this.createdTime,
            count: count ?? this.count,
            confirm: confirm ?? this.confirm,
            sale: sale ?? this.sale,
        );

    factory FlowerModel.fromJson(Map<String, dynamic> json) => FlowerModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        size: json["size"] == null ? null : Size.fromJson(json["size"]),
        description: json["description"],
        aboutTheProduct: json["aboutTheProduct"],
        price: json["price"]?.toDouble(),
        totalPrice: json["totalPrice"]?.toDouble(),
        discountedPrice: json["discountedPrice"]?.toDouble(),
        createdTime: json["createdTime"],
        count: json["count"],
        confirm: json["confirm"],
        sale: json["sale"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "size": size?.toJson(),
        "description": description,
        "aboutTheProduct": aboutTheProduct,
        "price": price,
        "totalPrice": totalPrice,
        "discountedPrice": discountedPrice,
        "createdTime": createdTime,
        "count": count,
        "confirm": confirm,
        "sale": sale,
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
