import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

// abstract class DataState<T> {
//   final T? data;
//   final DioException? exception;

//   const DataState({this.data, this.exception});
// }

// class DataSuccess<T> extends DataState {
//   const DataSuccess({super.data});
// }

class DataFailed {
  const DataFailed({this.exception});
  final String? exception;
}

typedef Result<T> = Future<Either<DataFailed, T>>;
typedef VoidFuture = Future<Either<DataFailed, void>>;
