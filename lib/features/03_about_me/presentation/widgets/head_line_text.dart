import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

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
