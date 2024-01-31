import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/custom_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
      chid: Container(
        color: dark ? ColorApp.darkGrey : ColorApp.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(Sizes.productImageRadius + 2),
                child: Center(child: Image(image: AssetImage(Images.onBoardingImage3)),),
              ),
            ),
            Positioned(
              right: 40,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) => RoundImage(
                      width: 80,
                      backgroundColor: dark ? ColorApp.dark : ColorApp.bg,
                      border: Border.all(color: ColorApp.blue02),
                      padding: EdgeInsets.all(Sizes.sm),
                      imageUrl: Images.onBoardingImage3,
                    ),
                    separatorBuilder: (_, __) => SizedBox(width: Sizes.spaceBtwItems,),
                    itemCount: 4
                ),
              ),
            ),
            KAppbar(
              leadingOnPressed: () => Get.back(),
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Icons.favorite, color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
