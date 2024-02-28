import 'package:shopping_app/core/networks.dart';
import 'package:shopping_app/features/home/domain/entities/category_entity.dart';

abstract class CategoryRepository{
  Result<List<CategoryEntity>> getCategories();
}