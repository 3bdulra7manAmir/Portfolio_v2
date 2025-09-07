import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/door_shape_clipper.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadLine(),
        Sizes.s30.verticalSpace,
        Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DeveloperImgAboutMe(),
            Sizes.s30.horizontalSpace,
            const Expanded(child: DescriptionAndDownloadLink()),
          ],
        ),
      ],
    );
  }
}


class HeadLine extends StatelessWidget {
  const HeadLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.current.whoIAM,
          style: AppStyles.black(
            fontWeight: AppFontWeights.mediumWeight,
            fontFamily: 'Anago',
          ),
        ),
        Sizes.s10.verticalSpace,
        Text(
          'Flutter Developer, Python Lover & Games Modder',
          style: AppStyles.bold(
            fontWeight: AppFontWeights.regularWeight,
            fontColor: AppColors.color.kGrey002,
          ),
        ),
      ],
    );
  }
}


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


class DescriptionAndDownloadLink extends StatelessWidget {
  const DescriptionAndDownloadLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.current.aboutMeDescription,
          style: AppStyles.thin(fontColor: AppColors.color.kGrey001,),
          textAlign: TextAlign.justify,
          maxLines: 14,
        ),
      ]
    );
  }
}


