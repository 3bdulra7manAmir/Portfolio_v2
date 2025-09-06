import 'package:flutter/material.dart';

import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final activeColor = AppColors.color.kOrange001;
    final inactiveColor = AppColors.color.kWhite001;

    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: AppStyles.thin(
          fontColor: isSelected ? activeColor : inactiveColor,
        ),
      ),
    );
  }
}
