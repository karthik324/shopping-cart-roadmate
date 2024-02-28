  import 'package:flutter/material.dart';
import 'package:shopping_app/core/app_colors.dart';

class SubProductWidget extends StatelessWidget {
  const SubProductWidget({
    super.key,
    required this.child,
    this.isSelected = false,
  });

  final Widget child;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: isSelected
                ? const [
                    BoxShadow(
                      color: AppColors.borderColor,
                      blurRadius: 2,
                      spreadRadius: 2,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 3),
                    ),
                  ]
                : [],
          ),
          child: child,
        ),
        const SizedBox(
          height: 5,
        ),
        isSelected
            ? Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.mainColor,
                ),
                width: 6,
                height: 6,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
