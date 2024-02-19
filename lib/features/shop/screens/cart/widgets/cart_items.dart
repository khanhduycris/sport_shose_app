import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../product_details/widgets/product_quantity_with_add_remove.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key, this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(
        height: Sizes.spaceBtwSections,
      ),
      itemCount: 4,
      itemBuilder: (context, index) => Column(
        children: [
          CartItem(),
          if(showAddRemoveButtons) const SizedBox(height: Sizes.spaceBtwItems,),
          if(showAddRemoveButtons)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  ProductQuantityWithAddRemove(),
                ],
              ),
              ProductTextTitle(title: '777')
            ],
          )
        ],
      ),
    );
  }
}