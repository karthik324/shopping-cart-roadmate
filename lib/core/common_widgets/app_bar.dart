import 'package:flutter/material.dart';
import 'package:shopping_app/core/app_colors.dart';
import 'package:shopping_app/core/app_styles.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    required this.title,
    this.isFavIcon = false,
  });
  final String title;
  final bool isFavIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.mainBgColor,
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: AppStyles.header,
      ),
      actions: [
        !isFavIcon
            ? IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active_outlined,
                  color: AppColors.iconColor,
                ),
              )
            : IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: AppColors.iconColor,
                ),
              ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: AppColors.iconColor,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(50, 50);
}
