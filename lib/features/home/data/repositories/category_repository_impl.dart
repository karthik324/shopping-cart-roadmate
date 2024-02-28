import 'package:shopping_app/core/networks.dart';
import 'package:shopping_app/features/home/data/data_sources/api.dart';
import 'package:shopping_app/features/home/domain/entities/category_entity.dart';
import 'package:shopping_app/features/home/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final ApiDataSource _apiDataSource;
  CategoryRepositoryImpl(this._apiDataSource);

  @override
  Result<List<CategoryEntity>> getCategories() {
    return _apiDataSource.getCategories();
  }
}
