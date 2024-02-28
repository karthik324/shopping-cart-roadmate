import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:shopping_app/features/home/presentation/bloc/home_event.dart';
import 'package:shopping_app/features/home/presentation/pages/base_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(OnLoadingEvent());
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, CupertinoPageRoute(builder: (ctx) => BaseScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
