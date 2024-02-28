import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/app_colors.dart';
import 'package:shopping_app/core/app_styles.dart';
import 'package:shopping_app/core/common_widgets/app_bar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: const BaseAppBar(
        title: 'Product',
        isFavIcon: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: double.maxFinite,
                height: size.height / 3,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.borderColor,
                      blurRadius: 2,
                      spreadRadius: 2,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.favorite_border_outlined,
                          color: AppColors.borderColor,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Swiper(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Image.network(
                            "https://via.placeholder.com/350x150",
                            fit: BoxFit.fill,
                          );
                        },
                        itemCount: 3,
                        pagination: SwiperPagination(),
                        control: SwiperControl(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Title',
                    style: AppStyles.large.copyWith(
                      color: AppColors.textBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: AppColors.starColor),
                      Icon(Icons.star, color: AppColors.starColor),
                      Icon(Icons.star, color: AppColors.starColor),
                      Icon(Icons.star, color: AppColors.starColor),
                      Icon(Icons.star_border_outlined, color: AppColors.borderColor),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Lorem ipsum dolor sit amet consectetur. Varius pharetra interdum ultrices amet metus mattis non. Massa morbi in at elit.',
                            style: AppStyles.smallHeader,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Exclusive Offer',
                      style: AppStyles.smallHeader,
                    ),
                    Row(
                      children: [
                        Text('₹2,339', style: AppStyles.large),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '₹2,599',
                          style: AppStyles.header.copyWith(
                            color: AppColors.borderColor,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '10% off',
                          style: AppStyles.header.copyWith(
                            color: AppColors.mainColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_offer_outlined, size: 17),
                        Text(
                          'Get assured',
                          style: AppStyles.smallHeader,
                        ),
                        Text(
                          ' 10% cashback ',
                          style: AppStyles.smallHeader.copyWith(
                            color: AppColors.mainColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'for every offer',
                          style: AppStyles.smallHeader,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Icon(Icons.location_on),
                      Text('Test Shop, 34/226 Kalamassery'),
                    ],
                  ),
                  Text(
                    'Change',
                    style: AppStyles.tiny.copyWith(
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: AppColors.borderColor,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Available coupons for you'),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(50, 50),
                        side: const BorderSide(
                          color: AppColors.textBlack,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Add to cart',
                        style: AppStyles.semiHeader.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.textBlack,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(50, 50),
                        backgroundColor: AppColors.buttonColorYellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Buy Now',
                        style: AppStyles.semiHeader.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
