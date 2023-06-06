import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/controller/feedback_page_controller.dart';

class FeedbackPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FeedBackPageController());
  }
}
