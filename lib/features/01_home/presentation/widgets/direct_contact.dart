import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import 'contact_me_button.dart';
import 'download_resume_button.dart';

class DirectContact extends StatelessWidget {
  const DirectContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        const ContactMeButton(),
        Sizes.s20.horizontalSpace,
        const DownloadCvButton()
      ],
    );
  }
}


