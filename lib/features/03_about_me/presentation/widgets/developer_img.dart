import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/widgets/door_shape_clipper.dart';

class DeveloperImgAboutMe extends StatelessWidget {
  const DeveloperImgAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: DoorShapeClipper(),
          child: const DeveloperBackgroundAboutMe(),
        ),
        Positioned(
          bottom: 0, top: 20.h, right: 0, left: 0,
          child: Image.asset(
            AppAssets.imgsPNG.developerImg,
            width: 500.w,
            height: 600.h,
          ),
        ),
      ],
    );
  }
}


class DeveloperBackgroundAboutMe extends StatelessWidget {
  const DeveloperBackgroundAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w, height: 700.h,
      decoration: BoxDecoration(color: AppColors.color.kBlack005),
    );
  }
}



