import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../widgets/career_info.dart';
import '../widgets/developer_img.dart';
import '../widgets/direct_contact.dart';
import '../widgets/name_and_tilte.dart';
import '../widgets/social_media.dart';


class Home extends StatelessWidget
{
  const Home({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const NameAndJobTitle(),
            Sizes.s50.verticalSpace,
            const SocialMediaLinks(),
            Sizes.s70.verticalSpace,
            const DirectContact(),
            Sizes.s100.verticalSpace,
            const CareerInfoHolder(),
          ],
        ),
        const Spacer(),
        const DeveloperImgHome(),
      ]
    );
  } 
}



