import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_shoes_store/common/widgets/images/circular_image.dart';
import 'package:sport_shoes_store/common/widgets/texts/brand_title_text_with_verifiled_icon.dart';
import 'package:sport_shoes_store/common/widgets/texts/product_price_text.dart';
import 'package:sport_shoes_store/common/widgets/texts/product_title_text.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/enums.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';
class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: Sizes.sm,
              backgroundColor: ColorApp.blue02.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: Sizes.sm, vertical: Sizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: ColorApp.black),),
            ),
            SizedBox(width: Sizes.spaceBtwItems,),
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: Sizes.spaceBtwItems,),
            ProductPriceText(price: '\$175', isLarge: true,)
          ],
        ),
        SizedBox(height: Sizes.spaceBtwItems / 1.5,),
        ProductTextTitle(title: 'Nike Sports Shirt',),
        SizedBox(height: Sizes.spaceBtwItems / 1.5,),

        Row(
          children: [
            ProductTextTitle(title: 'Status'),
            SizedBox(width: Sizes.spaceBtwItems,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        SizedBox(height: Sizes.spaceBtwItems / 1.5,),
        Row(
          children: [
            CircularImage(
              image: Images.onBoardingImage3,
              width: 32,
              height: 32,
              overlayColor: darkMode ? ColorApp.bg : ColorApp.black,
            ), BrandTitleWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.medium,)
          ],
        )
      ],
    );
  }
}
