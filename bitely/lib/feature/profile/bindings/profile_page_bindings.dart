import 'package:get/get.dart';
import 'package:profile_bitely/feature/profile/controller/profile_page_controller.dart';

class ProfilePageBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(profilePageController());
  }
}
