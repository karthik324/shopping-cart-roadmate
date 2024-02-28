import 'package:shopping_app/core/networks.dart';

abstract class UseCaseWithParams<Type,Params>{
  Result<Type> call({Params params});
}

abstract class UseCaseWithoutParams<Type>{
  Result<Type> call();
}