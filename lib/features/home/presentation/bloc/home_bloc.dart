import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/home/domain/entities/category_entity.dart';
import 'package:shopping_app/features/home/domain/repositories/category_repository.dart';
import 'package:shopping_app/features/home/domain/usecases/get_category_usecase.dart';
import 'package:shopping_app/features/home/presentation/bloc/home_event.dart';
import 'package:shopping_app/features/home/presentation/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List<CategoryEntity> categories = [];
  final CategoryRepository _categoryRepository;

  HomeBloc(this._categoryRepository) : super(InitialState()) {
    categories.clear();
    on<OnLoadingEvent>((event, emit) async {
      await getCategories();
      emit(LoadingState());
    });
    print('categories are $categories');
    on<OnLoadedEvent>((event, emit) => OnLoadedState(categories));
  }

  Future<void> getCategories() async {
    final GetCategoryUseCase useCase = GetCategoryUseCase(_categoryRepository);
    final res = await useCase();
    res.fold((l) {}, (r) {
      categories = r;
    });
  }
}
