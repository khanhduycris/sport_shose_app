import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_shoes_store/utils/constants/colors.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
import 'package:sport_shoes_store/utils/helpers/helper.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(Sizes.md),
      backgroundColor: selectedAddress
          ? ColorApp.blue02.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? ColorApp.darkGrey
              : ColorApp.grey,
      margin: const EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Icons.airplane_ticket_outlined : null,
              color: selectedAddress
                  ? dark
                      ? ColorApp.light
                      : ColorApp.dark.withOpacity(0.2)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Khanh Duy',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: Sizes.sm / 2,),
              const Text('+84 039420382', maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: Sizes.sm / 2,),
              const Text('777777 Le Khanh Duy', softWrap: true,),
            ],
          )
        ],
      ),
    );
  }
}
