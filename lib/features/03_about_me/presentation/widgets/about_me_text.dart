import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import 'resume_download_btn.dart';

class DescriptionAndDownloadLink extends StatelessWidget {
  const DescriptionAndDownloadLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.aboutMeDescription,
          style: AppStyles.thin(fontColor: AppColors.color.kGrey001,),
          textAlign: TextAlign.justify,
          maxLines: 14,
        ),
        Sizes.s20.verticalSpace,
        const AboutMeDownloadButton(),
      ]
    );
  }
}
