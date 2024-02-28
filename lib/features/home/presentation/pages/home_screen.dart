import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/app_colors.dart';
import 'package:shopping_app/core/app_styles.dart';
import 'package:shopping_app/core/common_widgets/app_bar.dart';
import 'package:shopping_app/features/home/presentation/widgets/product_category_widget.dart';
import 'package:shopping_app/features/home/presentation/widgets/product_widget.dart';
import 'package:shopping_app/features/home/presentation/widgets/top_info_widget_home_screen.dart';
import 'package:shopping_app/features/products/presentation/pages/featured_projects_screen.dart';
import 'package:shopping_app/features/products/presentation/pages/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      appBar: const BaseAppBar(title: 'Good Morning!'),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          child: Column(
            // shrinkWrap: true,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TopInfoWidget(
                      size: size,
                      mainIcon: Icons.edit_calendar_outlined,
                      description: 'View Bookings',
                      heading: 'Bookings',
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Expanded(
                    child: TopInfoWidget(
                      size: size,
                      description: 'Add / View offers',
                      heading: 'Offers',
                      mainIcon: Icons.local_offer_outlined,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const Text(
                'Products Categories',
                style: AppStyles.semiHeader,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCategoryWidget(
                    size: size,
                    icon: Icons.home_repair_service_outlined,
                    title: 'Tools',
                  ),
                  ProductCategoryWidget(
                    size: size,
                    icon: Icons.car_repair_outlined,
                    title: 'Car spa',
                  ),
                  ProductCategoryWidget(
                    size: size,
                    icon: Icons.battery_charging_full_outlined,
                    title: 'Batteries',
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (ctx) => const FeaturedProductsScreen()),
                      );
                    },
                    child: ProductCategoryWidget(
                      size: size,
                      title: 'View All',
                      isViewAll: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Featured Products',
                    style: AppStyles.semiHeader,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (ctx) => const FeaturedProductsScreen()),
                      );
                    },
                    child: Text(
                      'View all',
                      style: AppStyles.extraSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 3 / 4),
                itemBuilder: (ctx, idx) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (ctx) => ProductScreen(),
                        ),
                      );
                    },
                    child: ProductWidget(
                      size: size,
                      image: 'oi',
                      isFave: idx & 1 == 0,
                      price: '300$idx',
                      stars: '$idx',
                      strikeThroughPrice: '600$idx',
                      title: 'Big B $idx',
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
