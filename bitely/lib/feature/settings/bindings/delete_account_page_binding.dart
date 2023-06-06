import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/controller/delete_account_page_controller.dart';

class DeleteAccountPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DeleteAccountPageController());
  }
}
