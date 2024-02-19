import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/heading/section_heading.dart';
import 'package:sport_shoes_store/common/widgets/images/rounded_image.dart';
import 'package:sport_shoes_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
class SubCategoriesScreen extends StatefulWidget {
  const SubCategoriesScreen({super.key});

  @override
  State<SubCategoriesScreen> createState() => _SubCategoriesScreenState();
}

class _SubCategoriesScreenState extends State<SubCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppbar(title: Text('Sporst'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              RoundImage(
                width: double.infinity,
                imageUrl: Images.product1,
                applyImageRadius: true,
              ),
              const SizedBox(height: Sizes.spaceBtwSections,),
              Column(
                children: [
                  SectionHeading(title: 'Sports shirts', onPressed: (){},),
                  const SizedBox(height: Sizes.spaceBtwItems/2,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ProductCartHorizontal(),
                        separatorBuilder: (context, index) => SizedBox(width: Sizes.spaceBtwItems,),
                        itemCount: 4
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
