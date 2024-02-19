import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/styles/shadow_style.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_shoes_store/common/widgets/icons/circular_icon.dart';
import 'package:sport_shoes_store/common/widgets/images/rounded_image.dart';
import 'package:sport_shoes_store/common/widgets/texts/brand_title_text_with_verifiled_icon.dart';
import 'package:sport_shoes_store/common/widgets/texts/product_title_text.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';
class ProductCartHorizontal extends StatelessWidget {
  const ProductCartHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        color: dark ? ColorApp.darkGrey : ColorApp.greyBD
      ),
      child: Row(
        children: [
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(Sizes.sm),
            backgroundColor: dark ? ColorApp.dark : ColorApp.light,
            child: Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: RoundImage(
                    imageUrl: Images.onBoardingImage3, applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 12,
                  child: RoundedContainer(
                    radius: Sizes.sm,
                    backgroundColor: ColorApp.blue02.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(horizontal: Sizes.sm, vertical: Sizes.xs),
                    child: Text('%25', style: Theme.of(context).textTheme.labelLarge!.apply(color: ColorApp.black),),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircularIcon(
                    icon: Icons.favorite,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: Sizes.sm, left: Sizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTextTitle(title: 'Green Nike Half ..', smallSize: true,),
                      SizedBox(height: Sizes.spaceBtwItems/2,),
                      BrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: const Flexible(child: ProductTextTitle(title: '777')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorApp.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Sizes.cardRadiusMd),
                            bottomRight: Radius.circular(Sizes.productImageRadius),
                          )
                        ),
                        child: const SizedBox(
                          width: Sizes.iconLg * 1.2,
                          height: Sizes.iconLg * 1.2,
                          child: Center(child: Icon(Icons.add, color: ColorApp.white,),),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
