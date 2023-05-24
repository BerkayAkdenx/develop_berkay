// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:getx/controller/base_controller.dart';
import 'package:getx/services/test_service.dart';

class ProfilePageController extends BaseController {
  ProfilePageController({
    required this.testService,
  });
  final TestService testService;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("ProfilePagecontroller created");
  }

  getData() {
    testService.getDataOnInternet();
  }
}
