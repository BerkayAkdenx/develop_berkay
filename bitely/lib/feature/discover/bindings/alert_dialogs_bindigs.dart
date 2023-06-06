import 'package:get/get.dart';
import 'package:profile_bitely/feature/discover/controller/alert_dialogs_controller.dart';

class AlertDialogsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AlertDialogsController());
  }
}
