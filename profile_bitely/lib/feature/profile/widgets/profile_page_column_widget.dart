import 'package:flutter/material.dart';
import 'package:profile_bitely/Resources/app_colors.dart';

class ProfilePageColumnWidget extends StatelessWidget {
  const ProfilePageColumnWidget({
    super.key,
    required this.num,
    required this.text,
  });

  final String num;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: const TextStyle(
              color: AppColors.background,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xFF969696),
            ),
          ),
        )
      ],
    );
  }
}
