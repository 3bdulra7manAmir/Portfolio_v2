import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/utils/cubit_states.dart';
import '../../../../core/utils/functions/url_launcher/url_launcher_cubit.dart';
import '../../../../core/utils/functions/url_launcher/urls.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/widgets/buttons/icon_button.dart';
import '../../../../core/widgets/dialog.dart';
import '../../../../core/widgets/error_widget.dart';

class AboutMeDownloadButton extends StatelessWidget {
  const AboutMeDownloadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UrlLauncherCubit, DefaultState<void>>(
      listener: (context, state) {
        if (state is FailureState) {
          AppLogger.error('CV download failed: ${state.errorMessage}');
          customAppDialog(
            context: context,
            title: S.current.error,
            content: CustomErrorWidget(e: state.errorMessage),
          );
        }
      },
      builder: (context, state) {
        final isLoading = state is LoadingState;
        return CustomIconButton(
          onPressed: isLoading
            ? null : () {
            AppLogger.debug('Downloading CV...');
            context.read<UrlLauncherCubit>().launchUrlSafe(Urls.resumeGDrive);
          },
          text: S.current.downloadCV,
          icon: SvgPicture.asset(
            AppAssets.iconsSvg.download,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              AppColors.color.kWhite001,
              BlendMode.srcIn,
            ),
          ),
        );
      },
    );
  }
}

