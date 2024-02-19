import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/curved_edges/custom_edges_widget.dart';
import 'package:sport_shoes_store/common/widgets/heading/section_heading.dart';
import 'package:sport_shoes_store/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:sport_shoes_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:sport_shoes_store/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:sport_shoes_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:sport_shoes_store/features/shop/screens/product_details/widgets/ratting_share.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';

import '../product_reviews/product_reviews.dart';
class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(right: Sizes.defaultSpace, left: Sizes.defaultSpace, bottom: Sizes.defaultSpace),
              child: Column(
                children: [
                  RattingAndShare(),
                  ProductMetaData(),
                  ProductAttributes(),
                  SizedBox(height: Sizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(height: Sizes.spaceBtwSections,),
                  SectionHeading(title: 'Description', showActionButton: false,),
                  SizedBox(height: Sizes.spaceBtwItems,),
                  ReadMoreText(
                    'This is a Product description for Blue Nike Se dasjdansjdaskdjsnadjnsakjdnsajkdnsajkndsjandjsandajksdnaskjdnasjkdnasjdnasjdnasjdnsakjdnaskjdn',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  Divider(),
                  SizedBox(height: Sizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: 'Reviews (199)', showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => ProductReviewsScreen()), icon: Icon(Icons.arrow_forward_ios_sharp, size: 18,),),
                    ],
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
