import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_margins.dart';
import '../../../../core/utils/ui/responsive.dart';


class DeveloperImgHome extends StatelessWidget {
  const DeveloperImgHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children:
      [
        const DeveloperBackgroundHome(),
        Positioned(
          bottom: 0, 
          top: DeviceTypeHelper.instance.isMobile ? -30.h : 20.h, 
          child: Image.asset(
            AppAssets.imgsPNG.developerImg, 
            width: 500.w, 
            height: 600.h,
          )
        ),
      ],
    );
  }
}


class DeveloperBackgroundHome extends StatelessWidget {
  const DeveloperBackgroundHome({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceTypeHelper.instance.isMobile ? 700.w : 500.w, 
      height: 500.h,
      margin: AppMargins.single.developerImg,
      decoration: BoxDecoration(
        color: AppColors.color.kBlack005,
        shape: BoxShape.circle
      ),
    );
  }
}


