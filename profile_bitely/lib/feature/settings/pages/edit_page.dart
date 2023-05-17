import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/controller/edit_page_controller.dart';
import 'package:profile_bitely/feature/settings/pages/delete_account_page.dart';
import 'package:profile_bitely/feature/settings/widgets/appbar_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/base_button_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/clickable_container_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/editable_field_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/image_widget.dart';

class EditPage extends StatelessWidget {
  EditPage({super.key});
  final EditPageController _editPageController = Get.put(EditPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //this row for appbar
            AppbarWidget(
              title: AppTexts.editProfile.tr,
              saveActive: true,
              onpressedForSave: () {
                print("clicked save button");
              },
            ),

            // this row for profile image
            const ImageWidget(
              text: "İrem Nur Erenel",
            ),
            SizedBox(height: 50.h),
            // this row is email

            EditableFieldWidget(
              controller: _editPageController.emailController,
              isEmail: true,
            ),
            // this row is Full name
            EditableFieldWidget(
              controller: _editPageController.fullNameController,
              isEmail: false, // full name getting
            ),
            //this row is Password
            ClickableContainerWidget(
              text: AppTexts.password.tr,
              onPressed: () => print(" clicked the Password"),
            ),
            SizedBox(
              height: 60.h,
            ),
            //this row is categories
            ClickableContainerWidget(
              text: AppTexts.categories.tr,
              onPressed: () => print(" clicked the categories"),
            ), //this row is Main Goal
            ClickableContainerWidget(
              text: AppTexts.appbarMainGoal.tr,
              onPressed: () => print(" clicked the Main Goal"),
            ), //this row is Training Pace
            ClickableContainerWidget(
              text: AppTexts.appbarTrainingPace.tr,
              onPressed: () => print(" clicked the Training Pace"),
            ),
            SizedBox(
              height: 200.h,
            ),
            BaseButtonWidget(
              text: AppTexts.buttonDeleteMyAccount.tr,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeleteAccountPage(),
                  )),
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
