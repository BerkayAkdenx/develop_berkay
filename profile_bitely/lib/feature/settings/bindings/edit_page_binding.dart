import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/controller/edit_page_controller.dart';

class EditPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EditPageController());
  }
}
