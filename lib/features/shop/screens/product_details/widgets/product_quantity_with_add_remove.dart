import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper.dart';

class ProductQuantityWithAddRemove extends StatelessWidget {
  const ProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            CircularIcon(
              icon: Icons.add,
              width: 32,
              height: 32,
              size: Sizes.md,
              color: HelperFunctions.isDarkMode(context) ? ColorApp.bg : ColorApp.black,
              backgroundColor: HelperFunctions.isDarkMode(context) ? ColorApp.darkGrey : ColorApp.light,
            ),
            const SizedBox(width: Sizes.spaceBtwItems,),
            Text('2', style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(width: Sizes.spaceBtwItems,),
            CircularIcon(
              icon: Icons.add,
              width: 32,
              height: 32,
              size: Sizes.md,
              color: HelperFunctions.isDarkMode(context) ? ColorApp.bg : ColorApp.black,
              backgroundColor: ColorApp.blue02,
            ),
          ],
    );
  }
}

