import 'package:get/get.dart';

class testPageController extends GetxController {
  RxInt count = 0.obs;

  arttir() {
    count++;
    print(count);
  }

  azalt() {
    count--;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
