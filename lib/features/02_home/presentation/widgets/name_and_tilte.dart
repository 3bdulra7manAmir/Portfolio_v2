import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_sizes.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/margin.dart';

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
        Text(S.current.hi, style: AppStyles.semiThin(fontSize: AppFontSizes.meduim),),
        Sizes.s5.verticalSpace,
        Text(S.current.AbdoAmir, 
          style: AppStyles.semiBold(
            fontColor: AppColors.color.kGrey003,
            fontSize: AppFontSizes.large
          ),
        ),
        GradientText(
          S.current.role,
          colors: AppColors.gradient.kRole.colors,
          style: AppStyles.black(fontSize: AppFontSizes.xXXXLarge),
        ).marginDirectional(start: 30.w),
      ],
    );
  }
}
