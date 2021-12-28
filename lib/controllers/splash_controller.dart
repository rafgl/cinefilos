import 'package:cinefilos/utils/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 1500), () async {
      Get.offNamed(Routes.home);
    });
  }
}
