import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../layouts/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Icons.sort)),
          onChanged: (value) {},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest']
              .map((option) => DropdownMenuItem(
            value: option,
            child: Text(option),
          ))
              .toList(),
        ),
        const SizedBox(height: Sizes.spaceBtwSections,),
        GridLayout(itemCount: 8, itemBuilder: (p0, p1) => ProductCardVertical(),)
      ],
    );
  }
}