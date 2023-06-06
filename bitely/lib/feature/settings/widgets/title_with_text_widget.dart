import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

class TitleWithText extends StatelessWidget {
  const TitleWithText({
    super.key,
    required this.text,
    required this.title,
  });
  final String text;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppSpacings.sB5,
          child: Text(
            title,
            style: AppTextStyles.titleMediumDark,
          ),
        ),
        SizedBox(
          width: 270.w,
          child: AutoSizeText(
            text,
            style: AppTextStyles.bodySmallDark
                .copyWith(color: Colors.white.withOpacity(0.85)),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
