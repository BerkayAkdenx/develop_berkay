import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/controller/push_notification_controller.dart';

class PushNotificationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PushNotificationController());
  }
}
