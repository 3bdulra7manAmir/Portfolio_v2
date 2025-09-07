import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_margins.dart';


class DeveloperImg extends StatelessWidget {
  const DeveloperImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children:
      [
        Container(
          width: 500.w, height: 500.h,
          margin: AppMargins.single.developerImg,
          decoration: BoxDecoration(
            color: AppColors.color.kBlack005,
            shape: BoxShape.circle
          ),
        ),
        Positioned(
          bottom: 0, top: 20.h,
          child: Image.asset(AppAssets.imgsPNG.developerImg, width: 500.w, height: 600.h,)
        ),
      ],
    );
  }
}