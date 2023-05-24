import 'package:get/get.dart';

class BaseController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print("bir adet controller oluştu");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("kullanıcı cıkıs yaptı");
  }
}
