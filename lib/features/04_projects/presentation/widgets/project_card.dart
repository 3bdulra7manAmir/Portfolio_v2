import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/padding.dart';
import '../../../../core/utils/ui/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.projectLogo,
    required this.projectName,
    required this.projectDescription,
    required this.projectLinkAndroid,
    required this.projectLinkIOS,
  });

  final String projectLogo;
  final String projectName;
  final String projectDescription;
  final String projectLinkAndroid;
  final String projectLinkIOS;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.color.kBlack005,
      shape: RoundedRectangleBorder(
        borderRadius: AppRadiuses.circular.careerInfo,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Sizes.s30.verticalSpace,
          ClipRRect(
            borderRadius: AppRadiuses.circular.mainGreySpace,
            child: Image.asset(projectLogo, width: DeviceTypeHelper.instance.isMobile ? 60.w : 96.w,)
          ),
          Sizes.s15.verticalSpace,
          Text(
            projectName,
            style: AppStyles.semiBold(
              fontColor: AppColors.color.kOrange003,
              fontWeight: AppFontWeights.semiBoldWeight,
            ),
            textAlign: TextAlign.center,
          ),
          DeviceTypeHelper.instance.isMobile ? Sizes.s15.verticalSpace : Sizes.s35.verticalSpace,
          Text(
            projectDescription,
            style: AppStyles.thin(fontColor: AppColors.color.kGrey001),
            textAlign: TextAlign.center,
            maxLines: 6,
          ),
          Sizes.s20.verticalSpace,
        ],
      ).paddingSymmetric(horizontal: 20.w),
    );
  }
}
