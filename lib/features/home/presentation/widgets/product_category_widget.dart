import 'package:flutter/material.dart';
import 'package:shopping_app/core/app_colors.dart';
import 'package:shopping_app/core/app_styles.dart';

class ProductCategoryWidget extends StatelessWidget {
  const ProductCategoryWidget({
    super.key,
    required this.size,
    this.icon,
    required this.title,
    this.isViewAll = false,
  });

  final Size size;
  final IconData? icon;
  final String title;
  final bool isViewAll;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      // padding: EdgeInsets.all(size.width * 0.05),
      height: size.width * 0.22,
      width: size.width * 0.22,
      alignment: Alignment.center,
      child: !isViewAll
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 35,
                  color: AppColors.iconColor,
                ),
                Text(
                  title,
                  style: AppStyles.small,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppStyles.small,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.iconBgColor,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    fill: 1,
                    opticalSize: 1,
                    weight: 1,
                    grade: 2,
                    size: 13,
                  ),
                ),
              ],
            ),
    );
  }
}
