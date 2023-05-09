import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Resources/app_text_styles.dart';

class ClicklessContainerWidget extends StatelessWidget {
  const ClicklessContainerWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      child: Row(
        children: [
          Padding(
            padding: AppSpacings.sL15,
            child: Text(
              text,
              style: AppTextStyles.titleMediumDark,
            ),
          ),
        ],
      ),
    );
  }
}
