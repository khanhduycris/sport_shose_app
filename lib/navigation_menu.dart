import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/features/authentication/screens/home/home.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';

import 'features/personalization/screens/settings/setting.dart';
import 'features/shop/screens/store/store.dart';
import 'features/shop/screens/wishlist/wishlist.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: dark ? Colors.black : Colors.white,
          indicatorColor: dark ? Colors.black.withOpacity(0.1) : Colors.white.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.store), label: 'Store'),
            NavigationDestination(icon: Icon(Icons.favorite_border), label: 'WishList'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

 final screens = [const HomeScreen(), StoreScreen(), FavoriteScreen(), SettingScreen()];
}
