import 'package:get/get.dart';
import 'package:getx/controller/profile_page_controller.dart';

class ProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      ProfilePageController(testService: Get.find()),
    );
  }
}
