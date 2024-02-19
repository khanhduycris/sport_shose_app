import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';

import '../orders_list.dart';
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppbar(
        title: Text('My Order', style: Theme.of(context).textTheme.headlineSmall,), showBackArrow: true
      ),
      body: Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace),

        child: OrderListItems(),
      ),
    );
  }
}
