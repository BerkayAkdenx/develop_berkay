import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

class ClickableContainerWidget extends StatelessWidget {
  const ClickableContainerWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      color: AppColors.settingRowBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: AppSpacings.sL15,
            child: Text(
              text,
              style: AppTextStyles.titleMediumDark,
            ),
          ),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
