import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/features/shop/screens/sub_category/sub_categor%C3%ADes.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return VerticalImageText(
            image: Images.onBoardingImage3,
            title: 'Shoes Spost',
            onTap: () => Get.to(() => SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}