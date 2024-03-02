import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sport_shoes_store/common/layouts/grid_layout.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sport_shoes_store/common/widgets/heading/section_heading.dart';
import 'package:sport_shoes_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sport_shoes_store/common/widgets/shimmer/brand_shimmer.dart';
import 'package:sport_shoes_store/common/widgets/tabbar/tab_bar.dart';
import 'package:sport_shoes_store/common/widgets/texts/brand_title_text_with_verifiled_icon.dart';
import 'package:sport_shoes_store/features/shop/controllers/brand_controller.dart';
import 'package:sport_shoes_store/features/shop/controllers/category_controller.dart';
import 'package:sport_shoes_store/features/shop/screens/brand/all_brands.dart';
import 'package:sport_shoes_store/features/shop/screens/brand/brand_products.dart';
import 'package:sport_shoes_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/enums.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';

import '../../../../common/widgets/brand_card/brand_card.dart';
import '../../../../common/widgets/brand_card/brand_show_case.dart';
import '../../../../common/widgets/images/circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final brandController = Get.put(BrandController());
    final categories = CategoryController.instance.featuredCategories;
    final dark = HelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: KAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body:
        NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? ColorApp.black : ColorApp.bg,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(Sizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children:[
                      const SizedBox(height: Sizes.spaceBtwItems,),
                      const SearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: Sizes.spaceBtwSections,),
                      SectionHeading(title: 'Featured Brands', onPressed: () => Get.to(() => AllBrandsScreen()),),
                      const SizedBox(height: Sizes.spaceBtwItems / 1.5,),
                      Obx(
                        () {
                          if(brandController.isLoading.value) return const BrandsShimmer();
                          if(brandController.featureBrands.isEmpty){
                            return Center(child: Text("No dataaaaaa", style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),));
                          }
                          return GridLayout(
                            itemCount: brandController.featureBrands.length,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              final brand = brandController.featureBrands[index];
                              return BrandCard(showBorder: true, brandModel: brand, onTap: ()=> Get.to(BrandProducts(brand: brand)),);
                            },
                          );
                        }
                      ),
                    ],
                  ),
                ),
                bottom: KTabBar(
                  tabs: categories.map((category) => Tab(child: Text(category.name),)).toList()
                )
              )
            ];
          },
          body: TabBarView(
            children: categories.map((category) => CategoryTab(categoryModel: category)).toList()
          ),
        ),
      ),
    );
  }
}


