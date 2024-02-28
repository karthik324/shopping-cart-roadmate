import 'package:flutter/material.dart';
import 'package:shopping_app/core/app_colors.dart';
import 'package:shopping_app/core/app_styles.dart';

class TopInfoWidget extends StatelessWidget {
  const TopInfoWidget({
    super.key,
    required this.size,
    required this.description,
    required this.heading,
    required this.mainIcon,
  });

  final Size size;
  final IconData mainIcon;
  final String heading;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(size.width * 0.05),
      height: size.height * 0.17,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(heading, style: AppStyles.semiHeader),
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
                  size: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Icon(
                  mainIcon,
                  size: 35,
                  color: AppColors.iconColor,
                ),
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(description),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
