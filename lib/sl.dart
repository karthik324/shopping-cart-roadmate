import 'package:get_it/get_it.dart';
import 'package:shopping_app/core/dio_helper.dart';
import 'package:shopping_app/features/home/data/data_sources/api.dart';
import 'package:shopping_app/features/home/data/repositories/category_repository_impl.dart';

Future<void> depInject() async {
  final getIt = GetIt.instance;

  getIt.registerSingleton(DioHelper());
  getIt.registerSingleton(ApiDataSource(GetIt.instance<DioHelper>()));
  getIt.registerSingleton(CategoryRepositoryImpl(GetIt.instance<ApiDataSource>()));
}