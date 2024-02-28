import 'package:shopping_app/core/networks.dart';
import 'package:shopping_app/features/home/data/models/category_model.dart';

abstract class ProductDataSources {
  Result<List<Categorylist>> getCategories();
  Result<List<Categorylist>> getProducts(int index);
}
