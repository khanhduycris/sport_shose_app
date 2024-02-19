import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/common/layouts/grid_layout.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/curved_edges/custom_edges.dart';
import 'package:sport_shoes_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sport_shoes_store/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:sport_shoes_store/features/authentication/screens/home/widgets/home_categories.dart';
import 'package:sport_shoes_store/features/authentication/screens/home/widgets/promo_slider.dart';
import 'package:sport_shoes_store/features/shop/screens/all_products/all_products.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/constants/text_strings.dart';
import 'package:sport_shoes_store/utils/device/device_utils.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/custom_edges_widget.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/images/rounded_image.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          PrimaryHeaderContainer(
              child: Column(
            children: [
              HomeAppBar(),
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              SearchContainer(
                text: 'Search in Store',
              ),
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              Padding(
                padding: EdgeInsets.only(left: Sizes.defaultSpace),
                child: Column(
                  children: [
                    SectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                      textColor: ColorApp.bg,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              HomeCategories(),
              const SizedBox(height: Sizes.spaceBtwSections * 2,),
            ],
          )),
          Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  PromoSlider(banners: [Images.banner1, Images.banner2, Images.banner3],),
                  const SizedBox(height: Sizes.spaceBtwSections,),
                  SectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => AllProductScreen()),),
                  const SizedBox(height: Sizes.spaceBtwSections,),
                  GridLayout(itemCount: 8, itemBuilder: (_, index) => const ProductCardVertical())
                ],
              ))
        ],
      ),
    ));
  }
}
