import 'package:get/get.dart';
import 'package:sport_shoes_store/features/authentication/controllers/signup/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}