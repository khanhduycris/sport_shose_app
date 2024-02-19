import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/layouts/grid_layout.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';

class AllProductScreen extends StatefulWidget {
  const AllProductScreen({super.key});

  @override
  State<AllProductScreen> createState() => _AllProductScreenState();
}

class _AllProductScreenState extends State<AllProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppbar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}

