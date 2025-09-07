import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/utils/cubit_states.dart';
import '../../../../core/utils/functions/url_launcher/url_launcher_cubit.dart';
import '../../../../core/utils/functions/url_launcher/urls.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/widgets/buttons/button.dart';
import '../../../../core/widgets/dialog.dart';
import '../../../../core/widgets/error_widget.dart';


class ContactMeButton extends StatelessWidget {
  const ContactMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UrlLauncherCubit, DefaultState<void>>(
      listener: (context, state) {
        if (state is FailureState) {
          AppLogger.error('Email launch failed: ${state.errorMessage}');
          customAppDialog(
            context: context,
            title: S.current.error,
            content: CustomErrorWidget(e: state.errorMessage),
          );
        }
      },
      builder: (context, state) {
        final isLoading = state is LoadingState;
        return CustomButton(
          text: S.current.contactMe,
          onPressed: isLoading
            ? null : () {
            AppLogger.debug('Opening Email...');
            final encoded = Urls.email.toString().replaceAll('+', '%20');
            context.read<UrlLauncherCubit>().launchUrlSafe(encoded);
          },
        );
      },
    );
  }
}
