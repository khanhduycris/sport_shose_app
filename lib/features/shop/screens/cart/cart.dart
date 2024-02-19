import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/icons/circular_icon.dart';
import 'package:sport_shoes_store/common/widgets/images/rounded_image.dart';
import 'package:sport_shoes_store/common/widgets/texts/brand_title_text_with_verifiled_icon.dart';
import 'package:sport_shoes_store/common/widgets/texts/product_title_text.dart';
import 'package:sport_shoes_store/common/widgets/products/cart/cart_item.dart';
import 'package:sport_shoes_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:sport_shoes_store/features/shop/screens/checkout/checkout.dart';
import 'package:sport_shoes_store/features/shop/screens/product_details/widgets/product_quantity_with_add_remove.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppbar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => CheckoutScreen()),
          child: const Text('Checkout \$777'),
        ),
      ),
    );
  }
}

