import 'package:flutter/material.dart';
import 'package:profile_bitely/Resources/app_spacings.dart';
import 'package:profile_bitely/Resources/app_texts.dart';

class ProfileGetPremiumWidget extends StatelessWidget {
  const ProfileGetPremiumWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 320,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF8cfccf)),
        ),
        Image.asset("assets/Images/profileGetPremium.png"),
        SizedBox(
          width: 320,
          height: 100,
          child: Padding(
            padding: AppSpacings.sAll20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Text(
                      AppTexts.getPremium,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(AppTexts.subscribeNowSevenDays),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
