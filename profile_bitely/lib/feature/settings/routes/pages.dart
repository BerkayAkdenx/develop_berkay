import 'package:get/get.dart';
import 'package:profile_bitely/feature/settings/bindings/delete_account_page_binding.dart';
import 'package:profile_bitely/feature/settings/bindings/edit_page_binding.dart';
import 'package:profile_bitely/feature/settings/bindings/feedback_page_binding.dart';
import 'package:profile_bitely/feature/settings/bindings/notification_page_binding.dart';
import 'package:profile_bitely/feature/settings/bindings/push_notification_binding.dart';
import 'package:profile_bitely/feature/settings/bindings/setting_page_binding.dart';
import 'package:profile_bitely/feature/settings/pages/delete_account_page.dart';
import 'package:profile_bitely/feature/settings/pages/edit_page.dart';
import 'package:profile_bitely/feature/settings/pages/feedback_page.dart';
import 'package:profile_bitely/feature/settings/pages/notification_page.dart';
import 'package:profile_bitely/feature/settings/pages/push_notification_page.dart';
import 'package:profile_bitely/feature/settings/pages/settings_page.dart';
import 'package:profile_bitely/feature/settings/routes/routes.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.EDIT_PAGE,
      page: () => const EditPage(),
      binding: EditPageBinding(),
    ),
    GetPage(
      name: Routes.SETTINGS_PAGE,
      page: () => const SettingPage(),
      binding: SettingPageBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATION_PAGE,
      page: () => const NotificationPage(),
      binding: NotificationPageBinding(),
    ),
    GetPage(
      name: Routes.PUSH_NOTIFICATION_PAGE,
      page: () => const PushNotificationPage(),
      binding: PushNotificationPageBinding(),
    ),
    GetPage(
      name: Routes.DELETE_ACCOUNT_PAGE,
      page: () => const DeleteAccountPage(),
      binding: DeleteAccountPageBinding(),
    ),
    GetPage(
      name: Routes.FEEDBACK_PAGE,
      page: () => const FeedbackPage(),
      binding: FeedbackPageBinding(),
    ),
  ];
}
