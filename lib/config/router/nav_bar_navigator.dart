import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_images.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/extensions/margin.dart';
import '../../core/utils/cubit_states.dart';
import '../../core/widgets/circular_indicator.dart';
import '../../core/widgets/error_widget.dart';
import '../../core/widgets/navbar/nav_bar_items.dart';
import '../../core/widgets/navbar/navbar.dart';
import '../i18n/generated/l10n.dart';
import '../theme/theme_controller/theme_cubit.dart';


class MainScaffold extends StatelessWidget
{
  const MainScaffold({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) =>
      navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);

  @override
  Widget build(BuildContext context)
  {
    final currentIndex = navigationShell.currentIndex;
    return Scaffold(
      appBar: CustomNavBar(
        title: NavBarItems(
          currentIndex: currentIndex,
          onTap: _goBranch,
        ),
        //actions: const [ThemeActionWidget()],
        leading: Text(S.current.logo),
      ),
      body: navigationShell,
    );
  }
}


class HireMeButton extends StatelessWidget {
  const HireMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



// class ThemeActionWidget extends StatelessWidget
// {
//   const ThemeActionWidget({super.key});

//   @override
//   Widget build(BuildContext context)
//   {
//     return BlocBuilder<ThemeCubit, DefaultState<ThemeMode>>(
//       builder: (context, themeState)
//       {
//         switch (themeState) {
//           case SuccessState<ThemeMode>(:final data):
//             final locale = Localizations.localeOf(context).languageCode;
//             final (icon, label) = _resolveIconAndLabel(locale, data);
//             return Row(
//               mainAxisSize: MainAxisSize.min,
//               children:
//               [
//                 SvgPicture.asset(icon, fit: BoxFit.scaleDown),
//                 Sizes.s20.horizontalSpace,
//                 Text(label),
//               ],
//             ).marginDirectional(end: 20.w);
//           case LoadingState():
//             return const CustomLoadingIndicator();
//           case FailureState(:final errorMessage):
//             return CustomErrorWidget(e: errorMessage);
//           default:
//             return const SizedBox.shrink();
//         }
//       },
//     );
//   }

//   (String, String) _resolveIconAndLabel(String locale, ThemeMode mode) {
//     final isArabic = locale == 'ar';
//     final isDark = mode == ThemeMode.dark;

//     return switch ((isArabic, isDark)) {
//       (true, true)   => (AppAssets.iconsSvg.darkMode, S.current.dark),
//       (true, false)  => (AppAssets.iconsSvg.lightMode, S.current.light),
//       (false, true)  => (AppAssets.iconsSvg.darkMode, S.current.dark),
//       (false, false) => (AppAssets.iconsSvg.lightMode, S.current.light),
//     };
//   }
// }

