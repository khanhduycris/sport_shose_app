import 'package:flutter/material.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyLarge,),
            Text('\$777',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyLarge,),
            Text('\$7',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax',style: Theme.of(context).textTheme.bodyLarge,),
            Text('\$7',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Oder total',style: Theme.of(context).textTheme.bodyLarge,),
            Text('\$777',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
      ],
    );
  }
}
