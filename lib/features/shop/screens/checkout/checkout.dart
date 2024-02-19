import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_shoes_store/common/widgets/products/cart/cart_item.dart';
import 'package:sport_shoes_store/features/authentication/screens/home/home.dart';
import 'package:sport_shoes_store/features/authentication/screens/signup/success_screen.dart';
import 'package:sport_shoes_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:sport_shoes_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:sport_shoes_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:sport_shoes_store/navigation_menu.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../cart/widgets/cart_items.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: KAppbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              CartItems(
                showAddRemoveButtons: false,
              ),
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              CouponCode(),
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              RoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(Sizes.md),
                backgroundColor: dark ? ColorApp.black : ColorApp.white,
                child: Column(
                  children: [
                    BillingAmountSection(),
                    SizedBox(height: Sizes.spaceBtwItems,),
                    Divider(),
                    SizedBox(height: Sizes.spaceBtwItems,),
                   BillingPaymentSection(),
                    SizedBox(height: Sizes.spaceBtwItems,),
                    BillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
              () => SuccessScreen(
                  image: Images.onBoardingImage3,
                  title: 'Payment Success!',
                  subTitle: "You item with be shipped soon!",
                  onPressed: () => Get.offAll(() => const NavigationMenu())
              )
          ),
          child: const Text('Checkout \$256'),
        ),
      ),
    );
  }
}
