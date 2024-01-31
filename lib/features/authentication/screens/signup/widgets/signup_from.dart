import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/features/authentication/screens/signup/vefify_email.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper.dart';

class SignupFrom extends StatelessWidget {
  const SignupFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TextString.firstName, prefixIcon: Icon(Icons.person)
                  ),
                ),
              ),
              const SizedBox(width: Sizes.spaceBtwInoutFields,),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TextString.lastName, prefixIcon: Icon(Icons.person)
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Sizes.spaceBtwInoutFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TextString.username,
                prefixIcon: Icon(Icons.person)
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInoutFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TextString.email,
                prefixIcon: Icon(Icons.person)
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInoutFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TextString.phone,
                prefixIcon: Icon(Icons.person)
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInoutFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TextString.password,
                prefixIcon: Icon(Icons.person)
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwSections),
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value){},
                ),
              ),
              const SizedBox(width: Sizes.spaceBtwItems),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: '${TextString.iAgreeTo} ',
                            style: Theme.of(context).textTheme.bodySmall
                        ),
                        TextSpan(
                            text: '${TextString.privacyPolicy} ',
                            style: Theme.of(context).textTheme.bodyMedium!.apply(
                              decoration: TextDecoration.underline,
                              color: dark ? ColorApp.bg : ColorApp.blue02,
                              decorationColor: dark ? ColorApp.bg : ColorApp.blue02,
                            )
                        ),
                        TextSpan(text: '${TextString.and} ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: TextString.termsOfUse,
                            style: Theme.of(context).textTheme.bodyMedium!.apply(
                              decoration: TextDecoration.underline,
                              color: dark ? ColorApp.bg : ColorApp.blue02,
                              decorationColor: dark ? ColorApp.bg : ColorApp.blue02,
                            )
                        ),
                      ]
                  )
              )
            ],
          ),
          const SizedBox(height: Sizes.spaceBtwSections),
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(TextString.createAccount)),)
        ],
      ),
    );
  }
}