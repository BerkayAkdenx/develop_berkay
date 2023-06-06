import 'package:flutter/material.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

class ClickableContainerWidget extends StatelessWidget {
  const ClickableContainerWidget(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isExternal = false});

  final String text;
  final VoidCallback onPressed;
  final bool isExternal;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: AppSpacings.sAll16,
      tileColor: AppColors.settingRowBackground,
      trailing: isExternal
          ? null
          : const Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 30,
            ),
      onTap: onPressed,
      title: Text(
        text,
        style: AppTextStyles.titleMediumDark
            .copyWith(color: Colors.white.withOpacity(0.7)),
      ),
    );
  }
}
