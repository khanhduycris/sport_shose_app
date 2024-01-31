import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/chips/choice_chip.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_shoes_store/common/widgets/heading/section_heading.dart';
import 'package:sport_shoes_store/common/widgets/texts/product_price_text.dart';
import 'package:sport_shoes_store/common/widgets/texts/product_title_text.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';
import 'package:sport_shoes_store/common/widgets/chips/chip_theme.dart';
class ProductAttributes extends StatefulWidget {
  const ProductAttributes({super.key});

  @override
  State<ProductAttributes> createState() => _ProductAttributesState();
}

class _ProductAttributesState extends State<ProductAttributes> {
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: EdgeInsets.all(Sizes.md),
          backgroundColor: dark ? ColorApp.darkGrey : ColorApp.grey82.withOpacity(0.2),
          child: Column(
            children: [
              Row(
                children: [
                  SectionHeading(title: 'Variation', showActionButton: false,),
                  SizedBox(width: Sizes.spaceBtwItems,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ProductTextTitle(title: 'Price : ', smallSize: true,),
                          SizedBox(width: Sizes.spaceBtwItems,),
                          Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                          SizedBox(width: Sizes.spaceBtwItems,),
                          ProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          ProductTextTitle(title: 'Stock', smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      )
                    ],
                  ),
                ],
              ),
              ProductTextTitle(title: 'This is the Description of the .................................................................................', smallSize: true, maxLines: 4,),
            ],
          ),
        ),
        SizedBox(height: Sizes.spaceBtwItems,),
        Column(
          children: [
            SectionHeading(title: 'Colors'),
            SizedBox(height: Sizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                KChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
                KChoiceChip(text: 'Blue', selected: true, onSelected: (value){},),
                KChoiceChip(text: 'Red', selected: true, onSelected: (value){},),
                KChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
                KChoiceChip(text: 'Blue', selected: true, onSelected: (value){},),
                KChoiceChip(text: 'Red', selected: true, onSelected: (value){},),
                KChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
                KChoiceChip(text: 'Blue', selected: true, onSelected: (value){},),
                KChoiceChip(text: 'Red', selected: true, onSelected: (value){},),
              ],
            )
          ],
        ),
        Column(
          children: [
            SectionHeading(title: 'Size'),
            SizedBox(height: Sizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                KChoiceChip(text: 'EU 34', selected: true, onSelected: (value){},),
                KChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                KChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
              ]
            )
          ],
        )
      ],
    );
  }
}
