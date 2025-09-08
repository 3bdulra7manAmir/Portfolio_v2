import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../widgets/about_me_text.dart';
import '../widgets/developer_img.dart';
import '../widgets/head_line_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadLine(),
        Sizes.s30.verticalSpace,
        Row(
          children: [
            const DeveloperImgAboutMe(),
            Sizes.s30.horizontalSpace, // Space Here ??!?!!
            const Expanded(child: DescriptionAndDownloadLink()),
          ],
        ),
      ],
    );
  }
}


