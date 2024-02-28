import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int? id;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? status;
  final String? categoryName;
  final int? catId;

  const CategoryEntity({
    this.id,
    this.categoryName,
    this.catId,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.status,
  });

  @override
  List<Object?> get props => [
        id,
        image,
        createdAt,
        updatedAt,
        status,
        categoryName,
        catId,
      ];
}
