import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/common/layouts/grid_layout.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/icons/circular_icon.dart';
import 'package:sport_shoes_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sport_shoes_store/features/authentication/screens/home/home.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppbar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CircularIcon(icon: Icons.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(itemCount: 6, itemBuilder: (_, index) => ProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
