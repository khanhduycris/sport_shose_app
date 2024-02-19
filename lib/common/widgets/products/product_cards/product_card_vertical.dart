import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/common/styles/shadow_style.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_shoes_store/common/widgets/images/rounded_image.dart';
import 'package:sport_shoes_store/common/widgets/texts/product_title_text.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';

import '../../../../features/shop/screens/product_details/product_detail.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_price_text.dart';

class ProductCardVertical extends StatefulWidget {
  const ProductCardVertical({super.key});

  @override
  State<ProductCardVertical> createState() => _ProductCardVerticalState();
}

class _ProductCardVerticalState extends State<ProductCardVertical> {
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(Sizes.productImageRadius),
          color: dark ? ColorApp.darkGrey : ColorApp.bg,
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 206,
              padding: const EdgeInsets.all(Sizes.sm),
              backgroundColor: dark ? ColorApp.dark : ColorApp.light,
              child: Stack(
                children: [
                  const RoundImage(
                    imageUrl: Images.onBoardingImage3,
                    applyImageRadius: true,
                  ),
                  Positioned(
                      top: 12,
                      child: RoundedContainer(
                        radius: Sizes.sm,
                        backgroundColor: ColorApp.yellowF8.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: Sizes.sm, vertical: Sizes.xs),
                        child: Text(
                          '25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: ColorApp.black),
                        ),
                      )),
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: CircularIcon(
                        icon: Icons.favorite,
                        color: Colors.red,
                      )
                  )
                ],
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems / 2,),
            Padding(
              padding: EdgeInsets.only(left: Sizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTextTitle(
                      title: 'Green Nike Air Shoes',
                      smallSize: true,
                  ),
                  Row(
                    children: [
                      Text('Nike', overflow: TextOverflow.ellipsis,maxLines: 1, style: Theme.of(context).textTheme.labelMedium,),
                      const SizedBox(width: Sizes.xs,),
                      const Icon(Icons.verified, color: ColorApp.blue02, size: Sizes.iconsXs,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductPriceText(price: '35.0',),
                      Container(
                        decoration: const BoxDecoration(
                            color: ColorApp.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Sizes.cardRadiusLg),
                              bottomRight: Radius.circular(Sizes.productImageRadius),
                            )
                        ),
                        child: const SizedBox(
                          width: Sizes.iconLg * 1.2,
                          height: Sizes.iconLg * 1.2,
                          child: Center(child: Icon(Icons.add, color: ColorApp.bg,),),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


