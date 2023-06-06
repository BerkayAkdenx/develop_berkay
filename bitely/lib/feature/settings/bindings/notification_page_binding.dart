import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/controller/notification_page_controller.dart';

class NotificationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NotificationPageController());
  }
}
