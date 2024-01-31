import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/common/widgets/heading/section_heading.dart';
import 'package:sport_shoes_store/common/widgets/images/circular_image.dart';
import 'package:sport_shoes_store/features/authentication/screens/profile/widgets/profile_menu.dart';
import 'package:sport_shoes_store/utils/constants/image_strings.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppbar(showBackArrow: true, title: Text('Profile'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(image: Images.onBoardingImage3, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text("Change Profile ...."))
                  ],
                ),
              ),
              SizedBox(height: Sizes.spaceBtwItems / 2,),
              Divider(),
              SizedBox(height: Sizes.spaceBtwItems,),
              SectionHeading(title: "Profile Information", showActionButton: false,),
              SizedBox(height: Sizes.spaceBtwItems,),

              ProfileMenu(onPressed: () {  }, title: 'Name', value: 'Coding with KD',),
              ProfileMenu(onPressed: () {  }, title: 'Username', value: 'Coding with KD',),

              SizedBox(height: Sizes.spaceBtwItems,),
              const Divider(),
              SizedBox(height: Sizes.spaceBtwItems,),

              SectionHeading(title: 'Personal Information', showActionButton: false,),
              SizedBox(height: Sizes.spaceBtwItems,),

              ProfileMenu(onPressed: () {  }, title: 'User ID', value: '456789',),
              ProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'Coding with KD',),
              ProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '0392402306',),
              ProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Male',),
              ProfileMenu(onPressed: () {  }, title: 'Date of Birth', value: '10 Oct, 2001',),
              const SizedBox(height: Sizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

