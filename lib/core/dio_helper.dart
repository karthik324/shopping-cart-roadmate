import 'package:dio/dio.dart';
import 'package:shopping_app/core/api_constants.dart';

class DioHelper {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrlPath,
      sendTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  Future<Response> get(String url, {Map<String, dynamic>? queryParameters}) async {
    return await dio.get(
      url,
      queryParameters: {...?queryParameters},
      options: Options(
        headers: ApiConstants.mainheaders,
      ),
    );
  }

  Future<Response> post(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParams,
  }) async {
    return await dio.post(
      url,
      data: data,
      queryParameters: queryParams,
      options: Options(
        headers: ApiConstants.mainheaders,
      ),
    );
  }
}
