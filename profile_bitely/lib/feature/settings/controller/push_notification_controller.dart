import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/controller/base_controller.dart';

class PushNotificationController extends BaseController {
  var morningIsSwicthed = false.obs;
  var stayingIsSwicthed = false.obs;
  var upIsSwicthed = false.obs;

  void onchangeMorning(bool value) => morningIsSwicthed.value = value;

  void onchangeStaying(bool value) => stayingIsSwicthed.value = value;

  void onchangeUp(bool value) => upIsSwicthed.value = value;
}
