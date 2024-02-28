import 'package:shopping_app/features/home/domain/entities/category_entity.dart';

class CategoryModel {
  bool? error;
  List<Categorylist>? categorylist;
  String? message;

  CategoryModel({this.error, this.categorylist, this.message});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    if (json['categorylist'] != null) {
      categorylist = <Categorylist>[];
      json['categorylist'].forEach((v) {
        categorylist!.add(Categorylist.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    if (categorylist != null) {
      data['categorylist'] = categorylist!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    return data;
  }
}

class Categorylist extends CategoryEntity {
  const Categorylist({
    int? id,
    int? catId,
    String? categoryName,
    DateTime? createdAt,
    String? image,
    int? status,
    DateTime? updatedAt,
  });

  factory Categorylist.fromJson(Map<String, dynamic> json) {
    return Categorylist(
      id: json['id'] ?? '',
      categoryName: json['category_name'] ?? '',
      catId: json['cat_id'] ?? '',
      image: json['image'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
      status: json['status'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['category_name'] = categoryName;
    data['cat_id'] = catId;
    data['image'] = image;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['status'] = status;
    return data;
  }
}
