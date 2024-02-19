import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/common/layouts/grid_layout.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/brand_card/brand_card.dart';
import 'package:sport_shoes_store/common/widgets/heading/section_heading.dart';
import 'package:sport_shoes_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:sport_shoes_store/features/shop/screens/brand/brand_products.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';

class AllBrandsScreen extends StatefulWidget {
  const AllBrandsScreen({super.key});

  @override
  State<AllBrandsScreen> createState() => _AllBrandsScreenState();
}

class _AllBrandsScreenState extends State<AllBrandsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppbar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              GridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (p0, p1) => BrandCard(showBorder: true, onTap: () => Get.to(()=> BrandProducts()),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
