import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../common/widgets/texts/brand_title_text_with_verifiled_icon.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundImage(
          imageUrl: Images.onBoardingImage3,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(Sizes.sm),
          backgroundColor: HelperFunctions.isDarkMode(context)
              ? ColorApp.darkGrey
              : ColorApp.light,
        ),
        SizedBox(
          width: Sizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            BrandTitleWithVerifiedIcon(title: 'Nike'),
            Flexible(
                child: ProductTextTitle(
                  title: 'Blac Sports shoes',
                  maxLines: 1,
                )),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Color',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'Green',
                  style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: 'Size',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'UK 08',
                  style: Theme.of(context).textTheme.bodyLarge),
            ]))
          ],
        )
      ],
    );
  }
}