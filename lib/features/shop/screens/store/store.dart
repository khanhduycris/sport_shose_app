import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/layouts/grid_layout.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sport_shoes_store/common/widgets/heading/section_heading.dart';
import 'package:sport_shoes_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sport_shoes_store/common/widgets/tabbar/tab_bar.dart';
import 'package:sport_shoes_store/common/widgets/texts/brand_title_text_with_verifiled_icon.dart';
import 'package:sport_shoes_store/features/authentication/screens/store/widgets/category_tab.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/enums.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';

import '../../../../common/widgets/brand_card/brand_card.dart';
import '../../../../common/widgets/brand_card/brand_show_case.dart';
import '../../../../common/widgets/images/circular_image.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: KAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
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
                      SectionHeading(title: 'Featured Brands', onPressed: (){},),
                      const SizedBox(height: Sizes.spaceBtwItems / 1.5,),
                      GridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const BrandCard(showBorder: true,);
                        },
                      ),
                    ],
                  ),
                ),
                bottom: KTabBar(
                  tabs: [
                    Tab(child: Text('Sports'),),
                    Tab(child: Text('Furniture'),),
                    Tab(child: Text('Electronics'),),
                    Tab(child: Text('Clothes'),),
                    Tab(child: Text('Cosmetics'),),
                  ],
                )
              )
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}


