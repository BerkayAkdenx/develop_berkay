import 'package:get/get.dart';
import 'package:profile_bitely/feature/discover/bindings/alert_dialogs_bindigs.dart';
import 'package:profile_bitely/feature/discover/pages/alert_dialogs_page.dart';
import 'package:profile_bitely/feature/discover/routes/routes.dart';

abstract class Pages {
  static List<GetPage> discoverPages = [
    GetPage(
      name: Routes.ALERT_DIALOGS_PAGE,
      page: () => const AlertDialogsPage(),
      binding: AlertDialogsBinding(),
    ),
  ];
}
