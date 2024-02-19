import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/brand_card/brand_card.dart';
import 'package:sport_shoes_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppbar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              BrandCard(showBorder: true),
              SizedBox(height: Sizes.spaceBtwSections,),
              SortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
