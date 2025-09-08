import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/padding.dart';
import '../../../../core/utils/ui/responsive.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.serviceImg,
    required this.serviceName,
    required this.serviceDescription,
  });

  final String serviceImg;
  final String serviceName;
  final String serviceDescription;

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
          Image.asset(
            serviceImg,
            width: DeviceTypeHelper.instance.isMobile ? 60.w : 96.w,
            color: AppColors.color.kOrange003,
            //fit: BoxFit.scaleDown,
          ),
          Sizes.s15.verticalSpace,
          Text(
            serviceName,
            style: AppStyles.semiBold(
              fontColor: AppColors.color.kOrange003,
              fontWeight: AppFontWeights.semiBoldWeight,
            ),
            textAlign: TextAlign.center,
          ),
          DeviceTypeHelper.instance.isMobile ? Sizes.s15.verticalSpace : Sizes.s35.verticalSpace,
          Text(
            serviceDescription,
            style: AppStyles.thin(fontColor: AppColors.color.kGrey001),
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
          Sizes.s20.verticalSpace,
        ],
      ).paddingSymmetric(horizontal: 20.w),
    );
  }
}
