import 'dart:io';
import 'package:fruit_hub/core/models/review_model.dart';

import '../entities/product_entity.dart';

class ProductModel {
  final String name;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  final String code;
  String? urlImage;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num aveRating;
  final num ratingCount;
  final num bestSeller;
  final List<ReviewModel> reviews;

  ProductModel({
    required this.bestSeller,
    required this.name,
    required this.isFeatured,
    required this.description,
    required this.price,
    required this.image,
    required this.code,
    this.urlImage,
    required this.expirationMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    this.aveRating = 0,
    this.ratingCount = 0,
    this.isOrganic = false,
    required this.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        name: json["name"],
        description: json["description"],
        price: json["price"],
        urlImage: json["image"],
        isFeatured: json["isFeatured"],
        code: json["code"],
        expirationMonths: json["expirationMonths"],
        numberOfCalories: json["numberOfCalories"],
        unitAmount: json["unitAmount"],
        aveRating: json["aveRating"],
        ratingCount: json["ratingCount"],
        isOrganic: json["isOrganic"],
        reviews: json["reviews"] == null
            ? []
            : List<ReviewModel>.from(
                json["reviews"].map((x) => ReviewModel.fromJson(x)),
              ),
        bestSeller: json["bestSeller"],
        image: File(json["image"]),
      );

  toJson() => toMap();

  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      isFeatured: isFeatured,
      description: description,
      price: price,
      image: image,
      code: code,
      expirationMonths: expirationMonths,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      reviews: reviews.map((e) => e.toEntity()).toList(),
      isOrganic: isOrganic,
    );
  }

  toMap() => {
        "name": name,
        "description": description,
        "price": price,
        "image": urlImage,
        "isFeatured": isFeatured,
        "code": code,
        "expirationMonths": expirationMonths,
        "numberOfCalories": numberOfCalories,
        "unitAmount": unitAmount,
        "aveRating": aveRating,
        "ratingCount": ratingCount,
        "isOrganic": isOrganic,
        "reviews": reviews
      };
}
