import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

// ignore: must_be_immutable
class ReasonContainerWidget extends StatefulWidget {
  ReasonContainerWidget({
    super.key,
    required this.text,
    required this.onpressed,
    required this.enable,
  });
  final String text;
  VoidCallback onpressed;
  bool enable;

  @override
  State<ReasonContainerWidget> createState() => _ReasonContainerWidgetState();
}

class _ReasonContainerWidgetState extends State<ReasonContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacings.sB10.copyWith(bottom: 20.h),
      child: InkWell(
        onTap: widget.onpressed,
        child: Container(
          padding: AppSpacings.sAll20.copyWith(top: 0, bottom: 0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: widget.enable ? const Color(0xFFFF4949) : null,
              border: widget.enable
                  ? null
                  : Border.all(
                      color: AppColors.white,
                      width: 2,
                    ),
              borderRadius: AppRadiuses.radiusAll12),
          width: double.infinity,
          height: 57.h,
          child: Text(
            widget.text,
            style: AppTextStyles.titleSmallDark
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
