import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/utils/cubit_states.dart';
import '../../../../core/utils/functions/url_launcher/url_launcher_cubit.dart';
import '../../../../core/utils/functions/url_launcher/urls.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/widgets/buttons/button.dart';
import '../../../../core/widgets/buttons/hire_me.dart';
import '../../../../core/widgets/circular_indicator.dart';
import '../../../../core/widgets/dialog.dart';
import '../../../../core/widgets/error_widget.dart';

class DirectContact extends StatelessWidget {
  const DirectContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        const HireMeButton(),
        Sizes.s20.horizontalSpace,
        const DownloadCvButton()
      ],
    );
  }
}


class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UrlLauncherCubit, DefaultState<void>>(
      listener: (context, state) {
        if (state is FailureState) {
          customAppDialog(
            context: context,
            title: S.current.error,
            content: CustomErrorWidget(e: state.errorMessage,) ,
          );
        }
      },
      builder: (context, state)
      {
        final isLoading = state is LoadingState;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isLoading)
              const CustomLoadingIndicator(),
            CustomButton(
              onPressed: isLoading ? null : () {
                AppLogger.debug('Download CV...');
                context.read<UrlLauncherCubit>().launchUrlSafe(Urls.resume,);
              },
              text: S.current.downloadCV,
              textStyle: AppStyles.semiThin(
                fontColor: AppColors.color.kGrey001,
              ),
              backgroundColor: AppColors.color.kTransparent,
              borderColor: AppColors.color.kGrey004,
            ),
          ],
        );
      },
    );
  }
}


