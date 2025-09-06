import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/margin.dart';


class Home extends StatelessWidget
{
  const Home({super.key});


  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const NameAndJobTitle(),
            Sizes.s50.verticalSpace,
            const SocialMediaLinks(),
            //Here
          ],
        )
      ]
    );
  } 
}


class NameAndJobTitle extends StatelessWidget {
  const NameAndJobTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(
          'Hi, I am', style: AppStyles.semiThin(),
        ),
        Sizes.s5.verticalSpace,
        Text(
          'Abdulrahman Amir', 
          style: AppStyles.semiBold(
            fontColor: AppColors.color.kGrey003
          ),
        ),
        GradientText(
          'Flutter Developer', 
          colors: AppColors.gradient.kRole.colors,
          style: AppStyles.black(),
        ).marginDirectional(start: 30.w),
      ],
    );
  }
}


class SocialMediaLinks extends StatelessWidget {
  const SocialMediaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children:
      [
        SocialMediaIcon(img: AppAssets.iconsSvg.profile,),
        Sizes.s20.horizontalSpace,
        SocialMediaIcon(img: AppAssets.iconsSvg.profile,),
        Sizes.s20.horizontalSpace,
        SocialMediaIcon(img: AppAssets.iconsSvg.profile,),
        Sizes.s20.horizontalSpace,
        SocialMediaIcon(img: AppAssets.iconsSvg.profile,)
      ],
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    super.key, required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.all.socialMediaLinks,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.color.kWhite001),
        color: AppColors.color.kBlack002,
      ),
      child: SvgPicture.asset(img, fit: BoxFit.scaleDown,),
    );
  }
}

