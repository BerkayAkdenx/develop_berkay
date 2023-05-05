import 'package:flutter/material.dart';
import 'package:profile_bitely/Resources/app_colors.dart';
import 'package:profile_bitely/Resources/app_radiuses.dart';

class ProfileProWidget extends StatelessWidget {
  const ProfileProWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: AppRadiuses.radiusAll14,
              color: AppColors.onPrimaryDark),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 0.2),
            child: Text(
              "PRO",
              style: TextStyle(color: Colors.white, fontSize: 8.67),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
