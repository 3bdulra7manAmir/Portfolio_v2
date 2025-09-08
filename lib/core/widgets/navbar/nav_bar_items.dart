import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/i18n/generated/l10n.dart';
import '../../constants/app_sizes.dart';
import '../../extensions/iterator.dart';
import '../../utils/functions/url_launcher/urls.dart';
import 'nav_bar.dart';

class NavBarItems extends StatelessWidget
{
  const NavBarItems({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NavBar(
          title: S.current.home,
          isSelected: currentIndex == 0,
          onTap: () => onTap(0),
        ),
        NavBar(
          title: S.current.services,
          isSelected: currentIndex == 1,
          onTap: () => onTap(1),
        ),
        NavBar(
          title: S.current.myProjects,
          isSelected: currentIndex == 2,
          onTap: () => onTap(2),
        ),
        NavBar(
          title: S.current.aboutMe,
          isSelected: currentIndex == 3,
          onTap: () => onTap(3),
        ),
        NavBar(
          title: S.current.resume,
          isSelected: currentIndex == 4,
          onTap: () async {
          final uri = Uri.parse(Urls.resumeFlow);
          if (!await launchUrl(
            uri,
            webOnlyWindowName: '_blank',
            mode: LaunchMode.externalApplication,
          )) {
            throw Exception('Could not launch $uri');
          }
        },
      ),
      ].addSeparator(child: Sizes.s35.horizontalSpace).toList(),
    );
  }
}
