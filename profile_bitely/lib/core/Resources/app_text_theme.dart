import 'package:flutter/material.dart';
import 'package:profile_bitely/core/Resources/app_text_styles.dart';

class AppTextTheme {
  static TextTheme lightTextTheme() => TextTheme(
        displayLarge: AppTextStyles.displayLargeLight,
        //heading1
        displayMedium: AppTextStyles.displayMediumLight,
        //heading2
        displaySmall: AppTextStyles.displaySmallLight,
        //heading3
        headlineLarge: AppTextStyles.headlineLargeLight,
        //heading4
        headlineMedium: AppTextStyles.headlineMediumLight,
        //heading5
        headlineSmall: AppTextStyles.headlineSmallLight,
        //heading6
        titleLarge: AppTextStyles.titleLargeLight,
        //heading7
        titleMedium: AppTextStyles.titleMediumLight,
        //subtitle1
        titleSmall: AppTextStyles.titleSmallLight,
        //subtitle2
        labelLarge: AppTextStyles.labelLargeLight,
        //subtitle3
        bodyLarge: AppTextStyles.bodyLargeLight,
        //body1
        bodyMedium: AppTextStyles.bodyMediumLight,
        //body2
        bodySmall: AppTextStyles.bodySmallLight,
        //body3
        labelMedium: AppTextStyles.labelMediumLight,
        //button1
        labelSmall: AppTextStyles.labelSmallLight,
        //button2
      );

  static TextTheme darkTextTheme() => TextTheme(
        displayLarge: AppTextStyles.displayLargeDark,
        //headline1
        displayMedium: AppTextStyles.displayMediumDark,
        //headline2
        displaySmall: AppTextStyles.displaySmallDark,
        //headline3
        headlineLarge: AppTextStyles.headlineLargeDark,
        //headline4
        headlineMedium: AppTextStyles.headlineMediumDark,
        //headline5
        headlineSmall: AppTextStyles.headlineSmallDark,
        //headline6
        titleLarge: AppTextStyles.titleLargeDark,
        //headline7
        titleMedium: AppTextStyles.titleMediumDark,
        //subtitle1
        titleSmall: AppTextStyles.titleSmallDark,
        //subtitle2
        labelLarge: AppTextStyles.labelLargeDark,
        //subtitle3
        bodyLarge: AppTextStyles.bodyLargeDark,
        //body1
        bodyMedium: AppTextStyles.bodyMediumDark,
        //body2
        bodySmall: AppTextStyles.bodySmallDark,
        //body3
        labelMedium: AppTextStyles.labelMediumDark,
        //button1
        labelSmall: AppTextStyles.labelSmallDark,
        //button2
      );
}
