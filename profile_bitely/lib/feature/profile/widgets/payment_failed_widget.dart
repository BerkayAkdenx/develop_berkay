import 'package:flutter/material.dart';
import 'package:profile_bitely/Resources/app_colors.dart';
import 'package:profile_bitely/Resources/app_radiuses.dart';
import 'package:profile_bitely/Resources/app_spacings.dart';
import 'package:profile_bitely/Resources/app_texts.dart';

class PaymentFailedWidget extends StatelessWidget {
  const PaymentFailedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 102,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.radiusAll10,
        color: AppColors.onTertiaryLight,
      ),
      child: Row(
        children: [
          Padding(
            padding: AppSpacings.sSymmetricH20,
            child: Image.asset("assets/Images/failed.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(AppTexts.paymentFailed,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Padding(
                padding: AppSpacings.sT10,
                child: Row(
                  children: const [
                    Text(
                      AppTexts.weAreUnable,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
