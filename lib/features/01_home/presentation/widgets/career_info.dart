import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/divider.dart';

class CareerInfoHolder extends StatelessWidget {
  const CareerInfoHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.symmetric.careerInfo,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.hireMe,
        color: AppColors.color.kBlack004,
      ),
      child: const CareerInfoList(),
    );
  }
}


class CareerInfoList extends StatelessWidget {
  const CareerInfoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children:
      [
        CareerInfoComponent(
          title: '1+',
          subTitle: S.current.experience,
        ),
        Sizes.s20.horizontalSpace,
        const CustomDivider2(),
        Sizes.s20.horizontalSpace,
        CareerInfoComponent(
          title: '3+',
          subTitle: S.current.projects,
        ),
        Sizes.s20.horizontalSpace,
        const CustomDivider2(),
        Sizes.s20.horizontalSpace,
        CareerInfoComponent(
          title: '7+',
          subTitle: S.current.happyClients,
        ),
      ],
    );
  }
}


class CareerInfoComponent extends StatelessWidget {
  const CareerInfoComponent({
    super.key, 
    required this.title, 
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(title, style: AppStyles.semiThin(
            fontColor: AppColors.color.kOrange002,
            fontWeight: AppFontWeights.boldWeight
          ),
        ),
        Sizes.s5.verticalSpace,
        Text(subTitle, style: AppStyles.semiThin(
            fontColor: AppColors.color.kWhite001,
            fontWeight: AppFontWeights.boldWeight
          ),
        ),
      ],
    );
  }
}


