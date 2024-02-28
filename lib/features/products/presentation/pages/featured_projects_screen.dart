import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/app_colors.dart';
import 'package:shopping_app/core/app_styles.dart';
import 'package:shopping_app/core/common_widgets/app_bar.dart';
import 'package:shopping_app/features/home/presentation/widgets/product_widget.dart';
import 'package:shopping_app/features/products/presentation/pages/product_screen.dart';
import 'package:shopping_app/features/products/presentation/widgets/sub_product_widget.dart';

class FeaturedProductsScreen extends StatelessWidget {
  const FeaturedProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      appBar: BaseAppBar(
        title: 'Featured Products',
        isFavIcon: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: 'Search',
                        suffixIcon: Icon(
                          CupertinoIcons.search,
                          color: AppColors.borderColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.only(left: 13),
              height: size.height * 0.15,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SubProductWidget(
                    isSelected: true,
                    child: Text(
                      'All Products',
                      textAlign: TextAlign.center,
                      style: AppStyles.smallHeader.copyWith(
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                  SubProductWidget(
                    child: Icon(
                      Icons.miscellaneous_services_outlined,
                      size: 50,
                      color: AppColors.iconColor,
                    ),
                  ),
                  SubProductWidget(
                    child: Icon(
                      Icons.car_repair_outlined,
                      size: 50,
                      color: AppColors.iconColor,
                    ),
                  ),
                  SubProductWidget(
                    child: Icon(
                      Icons.battery_charging_full_outlined,
                      size: 50,
                      color: AppColors.iconColor,
                    ),
                  ),
                  SubProductWidget(
                    child: Icon(
                      Icons.filter_alt_outlined,
                      size: 50,
                      color: AppColors.iconColor,
                    ),
                  ),
                  SubProductWidget(
                    child: Icon(
                      Icons.key_outlined,
                      size: 50,
                      color: AppColors.iconColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Shop by subcategory', style: AppStyles.semiHeader),
                  Container(
                    padding: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.borderColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.white,
                    ),
                    width: size.width * 0.3,
                    child: DropdownButton(
                      isExpanded: true,
                      value: 'All',
                      padding: EdgeInsets.zero,
                      dropdownColor: AppColors.white,
                      underline: const SizedBox.shrink(),
                      borderRadius: BorderRadius.circular(5),
                      items: ['All', 'Ball']
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      onChanged: (val) {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.height * 0.04,
                  decoration: const BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(115),
                      bottomLeft: Radius.circular(115),
                    ),
                  ),
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.format_list_bulleted_rounded,
                          color: AppColors.white,
                        ),
                        Text(
                          'Filter',
                          style: AppStyles.small.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'All Products',
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
                          'Showing 356 results',
                          style: AppStyles.extraSmall.copyWith(
                            color: AppColors.mainColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
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
          ],
        ),
      ),
    );
  }
}
