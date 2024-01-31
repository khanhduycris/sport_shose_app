import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/icons/circular_icon.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';
class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace, vertical: Sizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? ColorApp.darkGrey : ColorApp.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Sizes.cardRadiusLg),
          topRight: Radius.circular(Sizes.cardRadiusLg)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                  icon: Icons.minimize,
                backgroundColor: ColorApp.darkGrey,
                width: 40,
                height: 40,
                color: ColorApp.bg,
              ),
              const SizedBox(width: Sizes.spaceBtwItems,),
              Text('2', style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: Sizes.spaceBtwItems,),
              CircularIcon(
                icon: Icons.add,
                backgroundColor: ColorApp.darkGrey,
                width: 40,
                height: 40,
                color: ColorApp.bg,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(Sizes.md),
                backgroundColor: ColorApp.black,
                side: const BorderSide(color: ColorApp.black)
            ),
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
