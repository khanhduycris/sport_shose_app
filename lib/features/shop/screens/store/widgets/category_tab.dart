import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sport_shoes_store/common/layouts/grid_layout.dart';
import 'package:sport_shoes_store/common/widgets/products/product_cards/product_card_vertical.dart';

import '../../../../../common/widgets/brand_card/brand_show_case.dart';
import '../../../../../common/widgets/heading/section_heading.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              BrandShowcase(images: [Images.onBoardingImage1, Images.onBoardingImage2, Images.onBoardingImage3],),
              const SizedBox(height: Sizes.spaceBtwItems,),
              SectionHeading(title: 'Featured Brands', onPressed: (){},),
              const SizedBox(height: Sizes.spaceBtwItems,),
              GridLayout(itemCount: 4, itemBuilder: (_, index) => ProductCardVertical()),
              const SizedBox(height: Sizes.spaceBtwSections,),
            ],
          ),
        ),
      ],
    );
  }
}
