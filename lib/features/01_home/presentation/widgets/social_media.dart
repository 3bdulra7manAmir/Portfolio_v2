import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/utils/cubit_states.dart';
import '../../../../core/utils/functions/url_launcher/url_launcher_cubit.dart';
import '../../../../core/utils/functions/url_launcher/urls.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/widgets/circular_indicator.dart';
import '../../../../core/widgets/dialog.dart';
import '../../../../core/widgets/error_widget.dart';


class SocialMediaLinks extends StatelessWidget {
  const SocialMediaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UrlLauncherCubit, DefaultState<void>>(
      listener: (context, state) {
        if (state is LoadingState) {
          const CustomLoadingIndicator();
        } 
        else if (state is FailureState) {
          customAppDialog(
            context: context,
            title: S.current.error,
            content: CustomErrorWidget(e: state.errorMessage,) ,
          );
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              AppLogger.debug('Insta.......');
              context.read<UrlLauncherCubit>().launchUrlSafe(Urls.instagram,);
            },
            child: SocialMediaIcon(img: AppAssets.iconsSvg.instagram),
          ),
          Sizes.s20.horizontalSpace,
          GestureDetector(
            onTap: () {
              AppLogger.debug('LinkedIn.......');
              context.read<UrlLauncherCubit>().launchUrlSafe(Urls.linkedIn,);
            },
            child: SocialMediaIcon(img: AppAssets.iconsSvg.linkedIn),
          ),
          Sizes.s20.horizontalSpace,
          GestureDetector(
            onTap: () {
              AppLogger.debug('GitHub.......');
              context.read<UrlLauncherCubit>().launchUrlSafe(Urls.github,);
            },
            child: SocialMediaIcon(img: AppAssets.iconsSvg.github),
          ),
        ],
      ),
    );
  }
}


class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    super.key, required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.all.socialMediaLinks,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.color.kGrey001),
        color: AppColors.color.kBlack002,
      ),
      child: SvgPicture.asset(
        img, 
        fit: BoxFit.scaleDown, width: 18.w, 
        colorFilter: ColorFilter.mode(AppColors.color.kGrey001, BlendMode.srcIn),
      ),
    );
  }
}

