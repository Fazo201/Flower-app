import 'dart:convert';

FlowerModel flowerModelFromJson(String str) => FlowerModel.fromJson(json.decode(str));

String flowerModelToJson(FlowerModel data) => json.encode(data.toJson());

class FlowerModel {
    String? id;
    String? name;
    String? image;
    Size? size;
    String? description;
    String? aboutTheProduct;
    double? price;
    double? discountedPrice;
    double? totalPrice;
    String? createdTime;
    int? count;
    bool? sale;

    FlowerModel({
        this.id,
        this.name,
        this.image,
        this.size,
        this.description,
        this.aboutTheProduct,
        this.price,
        this.discountedPrice,
        this.totalPrice,
        this.createdTime,
        this.count,
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
        double? discountedPrice,
        double? totalPrice,
        String? createdTime,
        int? count,
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
            discountedPrice: discountedPrice ?? this.discountedPrice,
            totalPrice: totalPrice ?? this.totalPrice,
            createdTime: createdTime ?? this.createdTime,
            count: count ?? this.count,
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
        discountedPrice: json["discountedPrice"]?.toDouble(),
        totalPrice: json["totalPrice"]?.toDouble(),
        createdTime: json["createdTime"],
        count: json["count"],
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
        "discountedPrice": discountedPrice,
        "totalPrice": totalPrice,
        "createdTime": createdTime,
        "count": count,
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
