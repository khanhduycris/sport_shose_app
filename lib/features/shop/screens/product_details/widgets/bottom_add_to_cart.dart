import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/common/widgets/icons/circular_icon.dart';
import 'package:sport_shoes_store/features/shop/controllers/cart_controller.dart';
import 'package:sport_shoes_store/features/shop/models/product_model.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';
class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;
    controller.updateAlreadyAddedProductCount(product);
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace, vertical: Sizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? ColorApp.darkGrey : ColorApp.light,
        borderRadius:const  BorderRadius.only(
          topLeft: Radius.circular(Sizes.cardRadiusLg),
          topRight: Radius.circular(Sizes.cardRadiusLg)
        )
      ),
      child: Obx(
        ()=> Row(
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
                  onPressed: () => controller.productQuantityInCart.value < 1 ? null : controller.productQuantityInCart.value -= 1,
                ),
                const SizedBox(width: Sizes.spaceBtwItems,),
                Text(controller.productQuantityInCart.value.toString(), style: Theme.of(context).textTheme.titleSmall,),
                const SizedBox(width: Sizes.spaceBtwItems,),
                CircularIcon(
                  icon: Icons.add,
                  backgroundColor: ColorApp.darkGrey,
                  width: 40,
                  height: 40,
                  color: ColorApp.bg,
                  onPressed: () => controller.productQuantityInCart.value += 1,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: controller.productQuantityInCart.value < 1 ? null : () => controller.addToCart(product),
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(Sizes.md),
                  backgroundColor: ColorApp.black,
                  side: const BorderSide(color: ColorApp.black)
              ),
              child: const Text('Add to Cart'),
            )
          ],
        ),
      ),
    );
  }
}
