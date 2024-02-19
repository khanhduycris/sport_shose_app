import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class BrandShowcase extends StatelessWidget {
  BrandShowcase({
    super.key,
    required this.images
  });

  final List<String> images;


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      borderColor: ColorApp.darkGrey,
      padding: const EdgeInsets.all(Sizes.md),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }
}
Widget brandTopProductImageWidget(String image, context){
  final dark = HelperFunctions.isDarkMode(context);
  return Expanded(
    child: RoundedContainer(
      height: 100,
      backgroundColor: dark ? ColorApp.darkGrey : ColorApp.light,
      margin: EdgeInsets.only(right: Sizes.sm),
      padding: EdgeInsets.all(Sizes.md),
      child: Image(fit: BoxFit.contain, image: AssetImage(image),),
    ),
  );
}