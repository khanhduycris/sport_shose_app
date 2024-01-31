import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/features/authentication/screens/login/login.dart';
import 'package:sport_shoes_store/features/authentication/screens/signup/success_screen.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/constants/text_strings.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';

import '../../../../utils/constants/image_strings.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(Images.onBoardingImage3),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: Sizes.spaceBtwSections),
              Text(TextString.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: Sizes.spaceBtwSections),
              Text('khanhduycris@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: Sizes.spaceBtwSections),
              Text(TextString.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: Sizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                      image: Images.onBoardingImage3,
                      title: TextString.yourAccountCreatedTitle,
                      subTitle: TextString.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen())
                  )),
                  child: const Text(TextString.continues),
                )
              ),
              const SizedBox(height: Sizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text(TextString.resendEmail),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}