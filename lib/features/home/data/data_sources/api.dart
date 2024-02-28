import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shopping_app/core/dio_helper.dart';
import 'package:shopping_app/core/networks.dart';
import 'package:shopping_app/features/home/data/data_sources/product_data_sources.dart';
import 'package:shopping_app/features/home/data/models/category_model.dart';

class ApiDataSource extends ProductDataSources {
  final DioHelper _helper;
  ApiDataSource(this._helper);
  @override
  Result<List<Categorylist>> getCategories() async {
    try {
      final response = await _helper.get('/categorylist');
      if (response.statusCode == 200) {
        final data = CategoryModel.fromJson(response.data['categorylist']);
        print('data is $data');
        return Right(data.categorylist ?? []);
      } else {
        return Left(DataFailed(exception: response.data));
      }
    } on DioException catch (e) {
      return Left(DataFailed(exception: e.message));
    }
  }

  @override
  Result<List<Categorylist>> getProducts(int index) async {
    try {
      final response = await _helper.post('/product', data: {
        "index": index,
      });
      if (response.statusCode == 200) {
        final data = CategoryModel.fromJson(response.data);
        return Right(data.categorylist ?? []);
      } else {
        return Left(DataFailed(exception: response.data));
      }
    } on DioException catch (e) {
      return Left(DataFailed(exception: e.message));
    }
  }
}
