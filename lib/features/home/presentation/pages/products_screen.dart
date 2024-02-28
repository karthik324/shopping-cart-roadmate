import 'package:flutter/material.dart';
import 'package:shopping_app/core/common_widgets/app_bar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(title: 'Deliver'),
      body: Center(
        child: Text('Products Screen',),
      ),
    );
  }
}