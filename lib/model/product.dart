// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    bool success;
    ProductClass product;

    Product({
        required this.success,
        required this.product,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        success: json["success"],
        product: ProductClass.fromJson(json["product"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "product": product.toJson(),
    };
}

class ProductClass {
    String id;
    String name;
    String description;
    String metaTitle;
    String metaDescription;
    String metaKeyword;
    String tag;
    String model;
    String sku;
    String upc;
    String ean;
    String jan;
    String isbn;
    String mpn;
    String location;
    String quantity;
    String stockStatus;
    dynamic manufacturerId;
    dynamic manufacturer;
    dynamic reward;
    String points;
    DateTime dateAvailable;
    String taxClassId;
    String weightClassId;
    String length;
    String width;
    String height;
    String lengthClassId;
    String subtract;
    List<Review> reviews;
    String minimum;
    String sortOrder;
    String status;
    DateTime dateAdded;
    DateTime dateModified;
    String viewed;
    String price;
    String href;
    String thumb;
    bool special;
    int rating;
    Taxs taxs;
    List<dynamic> discounts;
    List<dynamic> options;
    List<dynamic> related;

    ProductClass({
        required this.id,
        required this.name,
        required this.description,
        required this.metaTitle,
        required this.metaDescription,
        required this.metaKeyword,
        required this.tag,
        required this.model,
        required this.sku,
        required this.upc,
        required this.ean,
        required this.jan,
        required this.isbn,
        required this.mpn,
        required this.location,
        required this.quantity,
        required this.stockStatus,
        required this.manufacturerId,
        required this.manufacturer,
        required this.reward,
        required this.points,
        required this.dateAvailable,
        required this.taxClassId,
        required this.weightClassId,
        required this.length,
        required this.width,
        required this.height,
        required this.lengthClassId,
        required this.subtract,
        required this.reviews,
        required this.minimum,
        required this.sortOrder,
        required this.status,
        required this.dateAdded,
        required this.dateModified,
        required this.viewed,
        required this.price,
        required this.href,
        required this.thumb,
        required this.special,
        required this.rating,
        required this.taxs,
        required this.discounts,
        required this.options,
        required this.related,
    });

    factory ProductClass.fromJson(Map<String, dynamic> json) => ProductClass(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        metaTitle: json["meta_title"],
        metaDescription: json["meta_description"],
        metaKeyword: json["meta_keyword"],
        tag: json["tag"],
        model: json["model"],
        sku: json["sku"],
        upc: json["upc"],
        ean: json["ean"],
        jan: json["jan"],
        isbn: json["isbn"],
        mpn: json["mpn"],
        location: json["location"],
        quantity: json["quantity"],
        stockStatus: json["stock_status"],
        manufacturerId: json["manufacturer_id"],
        manufacturer: json["manufacturer"],
        reward: json["reward"],
        points: json["points"],
        dateAvailable: DateTime.parse(json["date_available"]),
        taxClassId: json["tax_class_id"],
        weightClassId: json["weight_class_id"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        lengthClassId: json["length_class_id"],
        subtract: json["subtract"],
        reviews: List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
        minimum: json["minimum"],
        sortOrder: json["sort_order"],
        status: json["status"],
        dateAdded: DateTime.parse(json["date_added"]),
        dateModified: DateTime.parse(json["date_modified"]),
        viewed: json["viewed"],
        price: json["price"],
        href: json["href"],
        thumb: json["thumb"],
        special: json["special"],
        rating: json["rating"],
        taxs: Taxs.fromJson(json["taxs"]),
        discounts: List<dynamic>.from(json["discounts"].map((x) => x)),
        options: List<dynamic>.from(json["options"].map((x) => x)),
        related: List<dynamic>.from(json["related"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "meta_keyword": metaKeyword,
        "tag": tag,
        "model": model,
        "sku": sku,
        "upc": upc,
        "ean": ean,
        "jan": jan,
        "isbn": isbn,
        "mpn": mpn,
        "location": location,
        "quantity": quantity,
        "stock_status": stockStatus,
        "manufacturer_id": manufacturerId,
        "manufacturer": manufacturer,
        "reward": reward,
        "points": points,
        "date_available": "${dateAvailable.year.toString().padLeft(4, '0')}-${dateAvailable.month.toString().padLeft(2, '0')}-${dateAvailable.day.toString().padLeft(2, '0')}",
        "tax_class_id": taxClassId,
        "weight_class_id": weightClassId,
        "length": length,
        "width": width,
        "height": height,
        "length_class_id": lengthClassId,
        "subtract": subtract,
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
        "minimum": minimum,
        "sort_order": sortOrder,
        "status": status,
        "date_added": dateAdded.toIso8601String(),
        "date_modified": dateModified.toIso8601String(),
        "viewed": viewed,
        "price": price,
        "href": href,
        "thumb": thumb,
        "special": special,
        "rating": rating,
        "taxs": taxs.toJson(),
        "discounts": List<dynamic>.from(discounts.map((x) => x)),
        "options": List<dynamic>.from(options.map((x) => x)),
        "related": List<dynamic>.from(related.map((x) => x)),
    };
}

class Review {
    String author;
    String text;
    int rating;
    String dateAdded;

    Review({
        required this.author,
        required this.text,
        required this.rating,
        required this.dateAdded,
    });

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        author: json["author"],
        text: json["text"],
        rating: json["rating"],
        dateAdded: json["date_added"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "text": text,
        "rating": rating,
        "date_added": dateAdded,
    };
}

class Taxs {
    TaxClass taxClass;
    TaxRate taxRate;

    Taxs({
        required this.taxClass,
        required this.taxRate,
    });

    factory Taxs.fromJson(Map<String, dynamic> json) => Taxs(
        taxClass: TaxClass.fromJson(json["tax_class"]),
        taxRate: TaxRate.fromJson(json["tax_rate"]),
    );

    Map<String, dynamic> toJson() => {
        "tax_class": taxClass.toJson(),
        "tax_rate": taxRate.toJson(),
    };
}

class TaxClass {
    int taxClassId;

    TaxClass({
        required this.taxClassId,
    });

    factory TaxClass.fromJson(Map<String, dynamic> json) => TaxClass(
        taxClassId: json["tax_class_id"],
    );

    Map<String, dynamic> toJson() => {
        "tax_class_id": taxClassId,
    };
}

class TaxRate {
    int taxRateId;

    TaxRate({
        required this.taxRateId,
    });

    factory TaxRate.fromJson(Map<String, dynamic> json) => TaxRate(
        taxRateId: json["tax_rate_id"],
    );

    Map<String, dynamic> toJson() => {
        "tax_rate_id": taxRateId,
    };
}
