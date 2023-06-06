import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/controller/base_controller.dart';

class DeleteAccountPageController extends BaseController {
  var ispressedCost = false.obs;
  var ispressedIDont = false.obs;
  var ispressedIFound = false.obs;
  var ispressedTechnical = false.obs;

  onChangeCost() {
    ispressedCost.value = !ispressedCost.value;
  }

  onChangeIDont() {
    ispressedIDont.value = !ispressedIDont.value;
  }

  onChangeIFound() {
    ispressedIFound.value = !ispressedIFound.value;
  }

  onChangeTechnical() {
    ispressedTechnical.value = !ispressedTechnical.value;
  }
}
