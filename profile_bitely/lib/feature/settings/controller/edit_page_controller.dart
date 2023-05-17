import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPageController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final String email = "erenaksoyyy@gmail.com";
  final String fullName = "Burak Volkan Coşkun";
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController.text = email;
    fullNameController.text = fullName;
    print("object");
  }
}
