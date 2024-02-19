import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';
class OrderListItems extends StatefulWidget {
  const OrderListItems({super.key});

  @override
  State<OrderListItems> createState() => _OrderListItemsState();
}

class _OrderListItemsState extends State<OrderListItems> {
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 6,
      separatorBuilder: (context, index) => SizedBox(height: Sizes.spaceBtwItems,),
      itemBuilder: (context, index) => RoundedContainer(
        showBorder: true,
        borderColor: ColorApp.grey,
        padding: EdgeInsets.all((Sizes.md)),
        backgroundColor: dark ? ColorApp.dark : ColorApp.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.local_shipping),
                      const SizedBox(width: Sizes.spaceBtwItems/2,),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Processing',
                              style: Theme.of(context).textTheme.bodyLarge!.apply(color: ColorApp.blue02, fontWeightDelta: 1),
                            ),
                            Text(
                              '07 Nov 2032',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp, size: Sizes.iconSm,))
              ],
            ),
            SizedBox(height: Sizes.spaceBtwItems,),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.shopping_bag),
                      SizedBox(width: Sizes.spaceBtwItems/2,),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium!.apply(color: ColorApp.grey82, fontWeightDelta: 1),
                            ),
                            Text(
                              '07 Nov 2032',
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.date_range_rounded),
                      SizedBox(width: Sizes.spaceBtwItems/2,),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shopping Date',
                              style: Theme.of(context).textTheme.labelMedium!.apply(color: ColorApp.grey82, fontWeightDelta: 1),
                            ),
                            Text(
                              '07 Nov 2032',
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
