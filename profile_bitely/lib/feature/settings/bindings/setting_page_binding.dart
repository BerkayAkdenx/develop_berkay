import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/controller/setting_page_controller.dart';

class SettingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SettingPageController());
  }
}
