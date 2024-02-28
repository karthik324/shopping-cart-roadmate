import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shopping_app/core/app_colors.dart';
import 'package:shopping_app/features/home/data/repositories/category_repository_impl.dart';
import 'package:shopping_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:shopping_app/features/home/presentation/pages/splash_screen.dart';
import 'package:shopping_app/sl.dart';

void main() async {
  await depInject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => HomeBloc(
            GetIt.instance<CategoryRepositoryImpl>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.mainColor,
          ),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
