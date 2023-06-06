import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/controller/base_controller.dart';

class FeedBackPageController extends BaseController {
  TextEditingController feedbackTEC = TextEditingController();
  var isEmpty = true.obs;

  isButtonDisable() =>
      isEmpty.value ? null : () => print("clicked submit button");

  String? validate(String text) {
    var worth = text.obs;
    if (worth.value.isEmpty) {
      isEmpty.value = true;
    } else if (worth.value.length <= 150) {
      isEmpty.value = false;
    } else {
      isEmpty.value = true;
    }
    return null;
  }
}
