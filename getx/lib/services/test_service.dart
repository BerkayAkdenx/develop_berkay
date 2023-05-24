import 'package:get/get.dart';

class TestService extends GetxService {
  getDataOnInternet() async {
    await Future.delayed(const Duration(seconds: 3));
    print("get data  is successful");
  }
}
