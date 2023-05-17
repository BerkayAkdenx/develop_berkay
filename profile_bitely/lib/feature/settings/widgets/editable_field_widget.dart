import 'package:flutter/material.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

class EditableFieldWidget extends StatelessWidget {
  const EditableFieldWidget(
      {super.key, required this.controller, required this.isEmail});
  final TextEditingController controller;
  final bool isEmail;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppTextStyles.bodyMediumDark
          .copyWith(color: Colors.white70, height: 2),
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColors.settingRowBackground,
        filled: true,
        prefixText:
            isEmail ? " Email :                  " : " Full Name :           ",
        prefixStyle:
            AppTextStyles.titleMediumDark.copyWith(color: Colors.white70),
        border: const OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
