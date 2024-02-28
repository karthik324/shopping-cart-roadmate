import 'package:flutter/material.dart';
import 'package:shopping_app/core/app_colors.dart';
import 'package:shopping_app/core/app_styles.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.size,
    required this.image,
    required this.isFave,
    required this.stars,
    required this.price,
    required this.strikeThroughPrice,
    required this.title,
  });

  final Size size;
  final String image;
  final bool isFave;
  final String title;
  final String stars;
  final String price;
  final String strikeThroughPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                !isFave ? Icons.favorite_border_outlined : Icons.favorite,
                color: !isFave ? AppColors.iconColor : AppColors.mainColor,
                size: 15,
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              image,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                title,
                style: AppStyles.smallHeader,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    strikeThroughPrice,
                    style: AppStyles.small.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    price,
                    style: AppStyles.small,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '$stars ⭐',
                  style: AppStyles.small,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
