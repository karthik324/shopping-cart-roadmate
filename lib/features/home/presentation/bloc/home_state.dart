import 'package:equatable/equatable.dart';
import 'package:shopping_app/features/home/domain/entities/category_entity.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class InitialState extends HomeState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends HomeState {
  @override
  List<Object?> get props => [];
}

class OnLoadedState extends HomeState {
  final List<CategoryEntity> categoryList;
  const OnLoadedState(this.categoryList);

  @override
  List<Object?> get props => [categoryList];
}

class OnErrorState extends HomeState {
  @override
  List<Object?> get props => [];
}
