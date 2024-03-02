import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sport_shoes_store/common/widgets/heading/section_heading.dart';
import 'package:sport_shoes_store/common/widgets/images/circular_image.dart';
import 'package:sport_shoes_store/common/widgets/list_titles/setting_menu_title.dart';
import 'package:sport_shoes_store/features/personalization/screens/address/address.dart';
import 'package:sport_shoes_store/features/shop/screens/order/widgets/order.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';

import '../../../../common/widgets/list_titles/user_profile.dart';
import '../../../../data/repositories/authentication_repository.dart';
import '../profile/profile.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  KAppbar(
                    title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: ColorApp.bg),),
                  ),
                  UserProfile(onPressed: () => Get.to(() => ProfileScreen()),),
                  const SizedBox(height: Sizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  SectionHeading(title: 'Account Setting', showActionButton: false,),
                  SizedBox(height: Sizes.spaceBtwItems,),
                  SettingMenuTitle(icon: Icons.home, title: 'My Addresses', subTitle: 'Set shopping ...', onTap: () => Get.to(() => UserAddressScreen()),),
                  SettingMenuTitle(icon: Icons.card_travel, title: 'My Cart', subTitle: 'Set shopping ...', onTap: () => Get.to(() => OrderScreen()),),
                  SettingMenuTitle(icon: Icons.shopping_bag, title: 'My Orders', subTitle: 'Set shopping ...',  onTap: () => Get.to(() => OrderScreen())),
                  SettingMenuTitle(icon: Icons.food_bank, title: 'Bank Account', subTitle: 'Set shopping ...'),
                  SettingMenuTitle(icon: Icons.discount , title: 'My Coupons', subTitle: 'Set shopping ...'),
                  SettingMenuTitle(icon: Icons.notifications, title: 'Notifications', subTitle: 'Set shopping ...'),
                  SettingMenuTitle(icon: Icons.security, title: 'Account Privacy', subTitle: 'Set shopping ...'),
                  
                  SizedBox(height: Sizes.spaceBtwSections,),
                  SectionHeading(title: 'App Setting', showActionButton: false,),
                  SizedBox(height: Sizes.spaceBtwItems,),
                  SettingMenuTitle(icon: Icons.cloud_upload, title: 'Load Data', subTitle: 'Upload Data to .......', trailing: Switch(value: true, onChanged: (value){},),),
                  SettingMenuTitle(icon: Icons.security_rounded, title: 'Safe Mode', subTitle: 'Upload Data to .......', trailing: Switch(value: true, onChanged: (value){},),),
                  SettingMenuTitle(icon: Icons.cloud_upload, title: 'HD Image', subTitle: 'Upload Data to .......', trailing: Switch(value: true, onChanged: (value){},),),
                  const SizedBox(height: Sizes.spaceBtwItems,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => AuthenticationRepository.instance.logout(),
                      child: const Text('Đăng xuất'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
