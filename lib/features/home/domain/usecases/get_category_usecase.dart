import 'package:shopping_app/core/networks.dart';
import 'package:shopping_app/core/usecase/usecase.dart';
import 'package:shopping_app/features/home/domain/entities/category_entity.dart';
import 'package:shopping_app/features/home/domain/repositories/category_repository.dart';

class GetCategoryUseCase extends UseCaseWithoutParams<List<CategoryEntity>> {
  final CategoryRepository _catRepo;
  GetCategoryUseCase(this._catRepo);

  @override
  Result<List<CategoryEntity>> call() {
    return _catRepo.getCategories();
  }
}
