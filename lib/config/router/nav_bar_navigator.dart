import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../core/constants/app_borders.dart';
import '../../core/constants/app_paddings.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/constants/app_styles.dart';
import '../../core/extensions/margin.dart';
import '../../core/utils/logger/app_logger.dart';
import '../../core/widgets/button.dart';
import '../../core/widgets/column.dart';
import '../../core/widgets/navbar/nav_bar_items.dart';
import '../i18n/generated/l10n.dart';
import '../theme/color_manager/colors.dart';


class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) =>
      navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);

  @override
  Widget build(BuildContext context) {
    final currentIndex = navigationShell.currentIndex;
    return Scaffold(
      body: MainBorderColor(
        child: MainBody(
          child: CustomColumn(
            isMargin: true,
            children: [
              Row(
                children: [
                  const Logo(),
                  const Spacer(),
                  NavBarItems(
                    currentIndex: currentIndex, 
                    onTap: _goBranch
                  ),
                  const Spacer(),
                  const HireMeButton(),
                ],
              ).marginOnly(top: 30.h),
              Sizes.s50.verticalSpace,
              Expanded(child: navigationShell,),
            ],
          ),
        ),
      ),
    );
  }
}



class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientText(
      colors: AppColors.gradient.kLogo.colors,
      S.current.logo.toUpperCase(), 
      style: AppStyles.bold(),
    );
  }
}


class HireMeButton extends StatelessWidget {
  const HireMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Hire Me',
      onPressed: () {
        AppLogger.debug('Hire ME');
      },
    );
  }
}


class MainBorderColor extends StatelessWidget {
  const MainBorderColor({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.all.mainGreySpace,
      decoration: BoxDecoration(
        color: AppColors.color.kGrey001,
        borderRadius: AppRadiuses.circular.mainGreySpace,
      ),
      child: child,
    );
  }
}


class MainBody extends StatelessWidget
{
  const MainBody({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: double.infinity, height: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.color.kBlack001,
        borderRadius: AppRadiuses.circular.mainGreySpace,
      ),
      child: child,
    );
  }
}



