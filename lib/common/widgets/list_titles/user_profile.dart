import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_shoes_store/data/controller/user_controller.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key, this.onPressed,
  });

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      onTap: onPressed,
      leading: const CircularImage(image: Images.onBoardingImage3, width: 50,  height: 50, padding: 0,),
      title: Text(controller.user.value.fullName, style: Theme.of(context).textTheme.headlineSmall!.apply(color: ColorApp.bg),),
      subtitle: Text(controller.user.value.email, style: Theme.of(context).textTheme.bodyMedium!.apply(color: ColorApp.bg),),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit, color: ColorApp.bg,),),
    );
  }
}